part of 'connectivity_checker_cubit.dart';

@immutable
abstract class ConnectivityCheckerState {}

class ConnectivityCheckerLoadingState extends ConnectivityCheckerState {

}

class ConnectivityCheckerConnectedState extends ConnectivityCheckerState {

   final ConnectionType connectionType;
   ConnectivityCheckerConnectedState({required this.connectionType});

}

class ConnectivityCheckerDisconnectedState extends ConnectivityCheckerState {

}



