part of 'home_bloc.dart';
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<PostModel> dataList;
  HomeLoadedState(this.dataList);

  @override
  List<Object> get props => [dataList];
}

class HomeErrorState extends HomeState {
  final String message;
  HomeErrorState(this.message);

  @override
  List<Object> get props => [message];
}
