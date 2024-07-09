part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitialState extends HomeState {
  @override
  List<Object> get props => [];
}

final class HomeLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

final class HomeLoadedState extends HomeState {
  List<PostModel> dataList;
  HomeLoadedState(this.dataList);
  @override
  List<Object> get props => [];
}