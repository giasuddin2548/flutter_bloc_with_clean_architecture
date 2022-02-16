part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
}
class HomeInitialState extends HomeState{
  @override
  List<Object?> get props => [];

}

class LoadedState extends HomeState{

  List<CategoryModel> categoryList=[];

  LoadedState(this.categoryList);


  LoadedState copyWith({List<CategoryModel>? list}){
    return LoadedState(
      categoryList=list ?? [],
    );
  }

  LoadedState clear(){
    return LoadedState(
      categoryList=[],
    );
  }

  @override

  List<Object?> get props => [];


}

class LoadingState extends HomeState{
  LoadingState();
  @override

  List<Object?> get props => [];

}

