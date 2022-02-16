import 'package:bloc_state_management/business_logic_layer/blocs/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=BlocProvider.of<HomeBloc>(context);
    provider.add(GetCategoryDataEvent());

    return BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
           print('BlocListener');
          if(state is LoadingState){
            print('Loading.......');
          }else if(state is LoadedState){

            print('Loaded.......');
          }
        },
         child: Scaffold(
           appBar: AppBar(title: Text('Flutter Bloc') ,),
           body: BlocBuilder<HomeBloc, HomeState>(

             builder: (context, state) {

               if(state is LoadedState){

                 return ListView.builder(
                   itemCount: state.categoryList.length,
                   itemBuilder: (context, index) => ListTile(title: Text(state.categoryList[index].brandName.toString()),),);

               }else{
                 return const Center(
                   child: SizedBox(
                     height: 60,
                     width: 60,
                     child: Center(child: CircularProgressIndicator()),
                   ),
                 );
               }

             },

           ),
         ),
    );
  }
}
