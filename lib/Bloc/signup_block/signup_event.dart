part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}
class FetchSignupEvent extends SignupEvent{
  final username;
  final email;
  final password;
FetchSignupEvent({required this.username,required this.email,required this.password});
}