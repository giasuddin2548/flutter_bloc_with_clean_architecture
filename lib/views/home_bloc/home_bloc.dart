import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {


  HomeBloc() : super( const HomeState()) {

    on<UsernameChanged>((event, emit)async{
      await _usernameChanged(event, emit);
    });

    on<GenderChanged>((event, emit)async{
      await _genderChanged(event, emit);
    });

    on<EmailChanged>((event, emit)async{
      await _emailChanged(event, emit);
    });
  }

  Future<void> _usernameChanged(UsernameChanged event, Emitter<HomeState> emit) async{
    emit(state.copyWith(username: event.username));
  }
  Future<void> _genderChanged(GenderChanged event, Emitter<HomeState> emit) async{
    emit(state.copyWith(gender: event.gender));
  }
  Future<void> _emailChanged(EmailChanged event, Emitter<HomeState> emit) async{
    emit(state.copyWith(email: event.email));
  }

}






// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc() : super(LoginInitial()){
//     on<Login>(_login);
//   }
// }

// void _login(Login event, Emitter<LoginState> emit) async {
//   ApiProvider _apiProvider = ApiProvider();
//
//   emit(LoginWaiting());
//   try {
//     List<LoginModel> data = await _apiProvider.login(event.email, event.password, event.apiToken);
//     emit(LoginSuccess(loginData: data));
//   } catch (ex){
//     if(ex != 'cancel'){
//       emit(LoginError(errorMessage: ex.toString()));
//     }
//   }
// }

// class LoginSuccess extends LoginState {
//   final List<LoginModel> loginData;
//   LoginSuccess({required this.loginData});
// }