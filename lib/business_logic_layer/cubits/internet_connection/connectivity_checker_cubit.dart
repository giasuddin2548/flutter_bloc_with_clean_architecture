import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/utils/constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'connectivity_checker_state.dart';

class ConnectivityCheckerCubit extends Cubit<ConnectivityCheckerState> {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;


  ConnectivityCheckerCubit({required this.connectivity}) : super(ConnectivityCheckerLoadingState()){
    monitorInternet();
  }
  void emitInternetConnected(ConnectionType _c)=>emit(ConnectivityCheckerConnectedState(connectionType: _c));
  void emitInternetDisconnected()=>emit(ConnectivityCheckerDisconnectedState());

  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }

  StreamSubscription<ConnectivityResult> monitorInternet() {
  return  connectivityStreamSubscription=connectivity.onConnectivityChanged.listen((ConnectivityResult result) {

      if(result==ConnectivityResult.wifi){
        emitInternetConnected(ConnectionType.wifi);
      }else if(result==ConnectivityResult.mobile){
        emitInternetConnected(ConnectionType.mobile);
      }else if(result==ConnectivityResult.none){
        emitInternetDisconnected();
      }

    });
  }

}
