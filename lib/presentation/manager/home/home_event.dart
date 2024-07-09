part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}


class InitHomeEvent extends HomeEvent{
  String requestData;
  InitHomeEvent(this.requestData);

  @override
  List<Object?> get props => [];

}

class RefreshHomeEvent extends HomeEvent{
  @override
  List<Object?> get props => [];

}
