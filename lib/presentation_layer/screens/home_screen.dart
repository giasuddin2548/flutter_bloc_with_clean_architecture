import 'package:bloc_state_management/business_logic_layer/blocs/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=BlocProvider.of<HomeBloc>(context);
    provider.add(GetCategoryDataEvent());

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Bloc'),),
      body: BlocConsumer<HomeBloc, HomeState>(

        builder: (context, state) => ListView.builder(
          itemCount: state.categoryList.length,

          itemBuilder: (context, index) => ListTile(title: Text(state.categoryList[index].categoryName.toString()),),),
        listener: (context, state) {


        } ,

      ),
    );
  }
}
