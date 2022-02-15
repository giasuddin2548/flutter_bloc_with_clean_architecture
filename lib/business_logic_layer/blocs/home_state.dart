part of 'home_bloc.dart';

class HomeState extends Equatable {

  List<CategoryModel> categoryList=[];

  HomeState(this.categoryList);


  HomeState copyWith({List<CategoryModel>? list}){
    return HomeState(
      categoryList=list ?? [],
    );
  }

  HomeState clear(){
    return HomeState(
      categoryList=[],
    );
  }

  @override

  List<Object?> get props => [];

}

class LoadingStatus extends HomeState{

  LoadingStatus(List<CategoryModel> categoryList) : super(categoryList);

}

