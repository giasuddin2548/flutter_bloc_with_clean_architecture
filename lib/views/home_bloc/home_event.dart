part of 'home_bloc.dart';

abstract class HomeEvent {
}
class UsernameChanged extends HomeEvent{
  final String username;

  UsernameChanged({required this.username});

}

class GenderChanged extends HomeEvent{
  final String gender;

  GenderChanged({required this.gender});

}

class EmailChanged extends HomeEvent{
  final String email;
  EmailChanged({required this.email});

}

class EditProfileSubmitted extends HomeEvent{


}

class EditProfileUpdated extends HomeEvent{


}