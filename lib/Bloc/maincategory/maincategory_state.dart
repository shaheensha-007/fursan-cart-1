part of 'maincategory_bloc.dart';

@immutable
abstract class MaincategoryState {}

class MaincategoryInitial extends MaincategoryState {}
class MaincategoryblocLoading extends MaincategoryState{}
class MaincategoryblocLoaded extends MaincategoryState{}
class MaincategoryblocError extends MaincategoryState{}

