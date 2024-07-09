part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class InitHomeEvent extends HomeEvent {
  final String requestData;
  InitHomeEvent(this.requestData);

  @override
  List<Object> get props => [requestData];
}

class RefreshHomeEvent extends HomeEvent {}