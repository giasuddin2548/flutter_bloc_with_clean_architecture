import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/data/remote/data_sources/dio_interceptor.dart';
import 'package:flutter_clean_arch/data/repositories/post_repo_impl.dart';
import 'package:flutter_clean_arch/domain/repositories/abstract_post_repository.dart';
import 'package:flutter_clean_arch/domain/use_cases/post_usecase.dart';
import 'package:get_it/get_it.dart';
import '../data/remote/data_sources/dio_service.dart';
import '../presentation/manager/home/home_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<DioInterceptor>(DioInterceptor());
  sl.registerSingleton<DioService>(DioService(dioInterceptor: sl<DioInterceptor>(), dio: sl()));

  sl.registerSingleton<PostRepoImpl>(PostRepoImpl(sl<DioService>()));
  sl.registerSingleton<AbstractPostRepository>(sl<PostRepoImpl>());
  sl.registerSingleton<PostUseCase>(PostUseCase(sl<AbstractPostRepository>()));
  sl.registerSingleton<HomeBloc>(HomeBloc(sl<PostUseCase>()));
  ///sl.registerSingleton<HomeBloc>(HomeBloc(sl<GetPostListUseCase>(), sl<GetPostByIDUseCase>())); for multiple parameters
}