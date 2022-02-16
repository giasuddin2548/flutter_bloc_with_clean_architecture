import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/business_logic_layer/cubits/internet_connection/connectivity_checker_cubit.dart';
import 'package:bloc_state_management/data_layer/models/category_model/category_model.dart';
import 'package:bloc_state_management/data_layer/repositories/category_repo/category_repository.dart';
import 'package:bloc_state_management/utils/constants.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  CategoryRepository  categoryRepository;
  // ConnectivityCheckerCubit connectivityCheckerCubit;
  // late StreamSubscription connectivityStreamSubscription;


  HomeBloc({required this.categoryRepository,/* required this.connectivityCheckerCubit */ }) : super(HomeInitialState()) {



    on<GetCategoryDataEvent>((event, emit) async{
      await _getHomeCategoryData(event, emit);
    });


  }

  Future<void> _getHomeCategoryData(GetCategoryDataEvent event, Emitter<HomeState> emit) async{

    emit(LoadingState());
    // print('Samir_checker::$runtimeType Method: _getHomeCategoryData');
    List<CategoryModel> list=[];
   await categoryRepository.getCategoryData().then((value) {
      list=value;
    });
    emit(LoadedState(list));
  }

  // @override
  // Future<void> close() {
  //   connectivityStreamSubscription.cancel();
  //   return super.close();
  // }

  // void connectionMonitor(GetCategoryDataEvent event, Emitter<HomeState> emit) {
  //   connectivityStreamSubscription=connectivityCheckerCubit.stream.listen((connectivityCheckerState ) async{
  //     if(connectivityCheckerState is ConnectivityCheckerConnectedState && connectivityCheckerState.connectionType==ConnectionType.wifi){
  //       print('Wifi internet Connected');
  //       await _getHomeCategoryData(event, emit);
  //     }else if(connectivityCheckerState is ConnectivityCheckerConnectedState && connectivityCheckerState.connectionType==ConnectionType.mobile){
  //       await _getHomeCategoryData(event, emit);
  //       print('Mobile internet Connected');
  //     }else{
  //       print('Please check your internet Connection');
  //     }
  //
  //
  //   });
  // }


}
