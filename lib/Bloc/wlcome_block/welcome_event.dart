part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeEvent {}
class FetchWelcomeEvent extends WelcomeEvent {
  final email;
  final password;

  FetchWelcomeEvent({required this.email, required this.password});
}