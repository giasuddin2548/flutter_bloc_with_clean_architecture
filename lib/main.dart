import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/presentation/manager/home/home_bloc.dart';
import 'package:flutter_clean_arch/presentation/pages/home_page.dart';
import 'package:flutter_clean_arch/utils/my_dependancy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (_) => sl<HomeBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}