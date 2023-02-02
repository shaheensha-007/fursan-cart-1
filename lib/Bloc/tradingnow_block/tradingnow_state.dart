part of 'tradingnow_bloc.dart';

@immutable
abstract class TradingnowState {}

class TradingnowInitial extends TradingnowState {}
class TradingnowLoading extends TradingnowState{}
class TradingnowblocLoaded extends TradingnowState {}
class TradingnowblocError extends TradingnowState {}