part of 'home_bloc.dart';

class HomeState extends Equatable {
  final String? username;
  final String? gender;
  final String? email;

  const HomeState({ this.username,  this.gender, this.email});


  HomeState copyWith({String? username,   String? gender, String? email}){
    return HomeState(
      username: username??this.username,
      gender: username??this.gender,
      email: username??this.email,
    );

  }

  HomeState clear(){
    return const HomeState(
      username: null,
      gender: null,
      email: null,
    );
  }


  @override
  List<Object> get props => [username.toString(), gender.toString(), email.toString()];
}

