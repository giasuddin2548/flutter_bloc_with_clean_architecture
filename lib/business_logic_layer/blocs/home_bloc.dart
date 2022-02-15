import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/data_layer/models/category_model/category_model.dart';
import 'package:bloc_state_management/data_layer/repositories/category_repo/category_repository.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  CategoryRepository  categoryRepository;


  HomeBloc({required this.categoryRepository}) : super(HomeState( const [])) {

    on<GetCategoryDataEvent>((event, emit)async {
      await _getHomeCategoryData(event, emit);
    });
  }

  Future<void> _getHomeCategoryData(GetCategoryDataEvent event, Emitter<HomeState> emit) async{

    emit(LoadingStatus(const []));

    print('Samir_checker::$runtimeType Method: _getHomeCategoryData');
    List<CategoryModel> list=[];
   await categoryRepository.getCategoryData().then((value) {
      list=value;
    });
    emit(state.copyWith(list: list));
  }



}
