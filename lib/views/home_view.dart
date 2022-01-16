

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blocController=BlocProvider.of<HomeBloc>(context, listen: false);


    return Scaffold(
      appBar: AppBar(
        title: BlocListener<HomeBloc,HomeState>(
            listener: (context, state)  {

            },
            child: BlocBuilder<HomeBloc,HomeState>(
              builder: (context, state) {
                print(state);
                return InkWell(
                    onTap: (){
                      // blocController.getName();
                    },
                    child: Text(state.props[0].toString()));
              },

            ),
        ),
      ),

    );
  }
}
