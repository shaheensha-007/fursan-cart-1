part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}
class SignupblocLoading extends SignupState{}
class SignupblocLoaded extends SignupState {}
class SignupblocError extends SignupState {}