import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/remote/models/PostModel.dart';
import '../../../domain/use_cases/post_usecase.dart';
import '../../../utils/logger.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostUseCase postUseCase;
  HomeBloc(this.postUseCase) : super(HomeInitialState()) {
    on<InitHomeEvent>(_onInitHomeEvent);
    on<RefreshHomeEvent>(_onRefreshHomeEvent);
  }

  Future<void> _onInitHomeEvent(InitHomeEvent event, Emitter<HomeState> emit) async {
    Log.i("InitHomeEvent triggered with data: ${event.requestData}");
    await _getPostData(emit);
  }

  Future<void> _onRefreshHomeEvent(RefreshHomeEvent event, Emitter<HomeState> emit) async {
    Log.i("RefreshHomeEvent triggered");
    await _getPostData(emit);
  }

  Future<void> _getPostData(Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    try {
      var data = await postUseCase.getPostList();
      emit(HomeLoadedState(data));
      Log.i("Data loaded successfully");
    } catch (e) {
      Log.e("Failed to load data: $e");
      emit(HomeErrorState(e.toString()));
    }
  }
}