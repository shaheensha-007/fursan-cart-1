part of 'choosebrand_bloc.dart';

@immutable
abstract class ChoosebrandState {}

class ChoosebrandInitial extends ChoosebrandState {}
class Choosebrandblocloading extends ChoosebrandState{}
class Choosebrandblocloaded extends ChoosebrandState{}
class ChoosebrandblocError extends ChoosebrandState{}