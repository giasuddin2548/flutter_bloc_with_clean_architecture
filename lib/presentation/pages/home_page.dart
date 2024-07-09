import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/presentation/manager/home/home_bloc.dart';
import '../../utils/my_dependancy.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    sl<HomeBloc>().add(InitHomeEvent("Hi, I'm from Home Page"));
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadedState) {
          return ListView.builder(
              itemCount: state.dataList.length,
              itemBuilder: (c,i)=>ListTile(title: Text(state.dataList[i].title??''),));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}