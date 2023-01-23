part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeState {}

class WelcomeInitial extends WelcomeState {}
class welcomeblocLoading extends WelcomeState{}
class welcomeblocLoaded extends WelcomeState {}
class welcomeblocError extends WelcomeState {}
