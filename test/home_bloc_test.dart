//
//
// import 'package:bloc_state_management/business_logic_layer/blocs/home_bloc.dart';
// import 'package:bloc_state_management/data_layer/data_providers/category_provider/category_provider.dart';
// import 'package:bloc_state_management/data_layer/repositories/category_repo/category_repository.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// // homeBloc=HomeBloc(categoryRepository: CategoryRepository(categoryProvider: CategoryProvider()));
//
// void main(){
//
//   final homeBloc=HomeBloc(categoryRepository: CategoryRepository(categoryProvider: CategoryProvider()));
//   expect(homeBloc.state, HomeInitialState());
//
//
//
//
//   // group('HomeBloc', () {
//   //
//   //   late HomeBloc homeBloc;
//   //
//   //   setUp((){
//   //     homeBloc=HomeBloc(categoryRepository: CategoryRepository(categoryProvider: CategoryProvider()));
//   //   });
//   //
//   //
//   //   tearDown((){
//   //     homeBloc.close();
//   //   });
//   //
//   //   test('Home Bloc', (){
//   //     expect(homeBloc.state, HomeInitialState());
//   //
//   //
//   //   });
//   //
//   //   blocTest(
//   //     'emits [] when nothing is added',
//   //     build: () => HomeBloc(categoryRepository: CategoryRepository(categoryProvider: CategoryProvider())),
//   //     act: (bloc) => bloc.add(CounterIncrementPressed()),
//   //     expect: () => [1],
//   //   );
//   //
//   //
//   //
//   //   // blocTest(
//   //   //   'emits [MyState] when MyEvent is added',
//   //   //   build: () => MyBloc(),
//   //   //   act: (bloc) => bloc.add(MyEvent()),
//   //   //   wait: const Duration(milliseconds: 300),
//   //   //   expect: () => [isA<MyState>()],
//   //   // );
//   //
//   //
//   // });
//
//
//
// }
