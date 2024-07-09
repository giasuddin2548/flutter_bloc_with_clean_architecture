import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/remote/models/PostModel.dart';
import '../../../domain/use_cases/post_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostUseCase postUseCase;
  HomeBloc(this.postUseCase) : super(HomeInitialState()) {
    on<InitHomeEvent>((event, emit) async {
      await _getPostData(event, emit);
    });
    on<RefreshHomeEvent>((event, emit) async {
      await refreshData(event, emit);
    });
  }
  Future<void> _getPostData(InitHomeEvent event, Emitter<HomeState> emit) async {
    print("_getPostData called");
    emit(HomeLoadingState());
    var data=await postUseCase.getPostList();
    emit(HomeLoadedState(data));
  }

  Future<void> refreshData(RefreshHomeEvent event, Emitter<HomeState> emit) async {
    print("refreshData called");
    emit(HomeLoadingState());
    var data=await postUseCase.getPostList();
    emit(HomeLoadedState(data));
  }
}