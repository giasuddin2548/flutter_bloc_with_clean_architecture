import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/data/repositories/post_repo_impl.dart';
import 'package:flutter_clean_arch/domain/repositories/abstract_post_repository.dart';
import 'package:flutter_clean_arch/domain/use_cases/post_usecase.dart';
import 'package:get_it/get_it.dart';
import '../presentation/manager/home/home_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<PostRepoImpl>(PostRepoImpl(sl<Dio>()));
  sl.registerSingleton<AbstractPostRepository>(sl<PostRepoImpl>());
  sl.registerSingleton<PostUseCase>(PostUseCase(sl<AbstractPostRepository>()));
  sl.registerSingleton<HomeBloc>(HomeBloc(sl<PostUseCase>()));
  ///sl.registerSingleton<HomeBloc>(HomeBloc(sl<GetPostListUseCase>(), sl<GetPostByIDUseCase>())); for multiple parameters
}