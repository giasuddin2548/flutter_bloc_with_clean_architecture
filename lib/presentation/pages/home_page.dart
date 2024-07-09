import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch/presentation/manager/home/home_bloc.dart';
import '../../utils/my_dependancy.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(InitHomeEvent("Hi, I'm from Home Page"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HomeBloc>().add(RefreshHomeEvent());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadedState) {
          return ListView.builder(
            itemCount: state.dataList.length,
            itemBuilder: (c, i) => ListTile(
              title: Text(state.dataList[i].title ?? ''),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
