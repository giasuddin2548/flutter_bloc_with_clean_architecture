
import 'package:bloc_state_management/business_logic_layer/cubits/internet_connection/connectivity_checker_cubit.dart';
import 'package:bloc_state_management/data_layer/data_providers/category_provider/category_provider.dart';
import 'package:bloc_state_management/data_layer/repositories/category_repo/category_repository.dart';
import 'package:bloc_state_management/presentation_layer/screens/home_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic_layer/blocs/home_bloc.dart';
import 'business_logic_layer/simple_bloc_observer.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  BlocOverrides.runZoned(() {
          runApp(const MyApp());
          },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
        providers: [
          // BlocProvider<ConnectivityCheckerCubit>(
          //   create: (BuildContext context) => ConnectivityCheckerCubit(connectivity: Connectivity()),
          //
          // ),

          BlocProvider<HomeBloc>(
            create: (BuildContext context) => HomeBloc(categoryRepository: CategoryRepository(categoryProvider: CategoryProvider())),
          ),
        ],
        child:
          MaterialApp(
            debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  const HomeScreen(),
        )
    );
  }
}

