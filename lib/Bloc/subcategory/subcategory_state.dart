part of 'subcategory_bloc.dart';

@immutable
abstract class SubcategoryState {}

class SubcategoryInitial extends SubcategoryState {}
class SubcategoryblocLoading extends SubcategoryState{}
class SubcategoryblocLoaded extends SubcategoryState{}
class SubcategoryblocError extends SubcategoryState{}