
import 'package:bloc_state_management/presentation_layer/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // MultiBlocProvider(
      //   providers: [
      //     BlocProvider<HomeBloc>(
      //       create: (BuildContext context) => HomeBloc(),
      //     ),
      //   ],
      //   child:
          MaterialApp(
            debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  HomeScreen(),
        // )
    );
  }
}

