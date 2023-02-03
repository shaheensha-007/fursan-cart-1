part of 'choosebrand_bloc.dart';

@immutable
abstract class ChoosebrandState {}

class ChoosebrandInitial extends ChoosebrandState {}
class ChoosebrandblocLoading extends ChoosebrandState{}
class ChoosebrandblocLoaded extends ChoosebrandState {}
class ChoosebrandblocError extends ChoosebrandState {}