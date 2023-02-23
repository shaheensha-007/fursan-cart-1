part of 'ordercart_bloc.dart';

@immutable
abstract class OrdercartState {}

class OrdercartInitial extends OrdercartState {}
class OrdercartblocLoading extends OrdercartState{}
class OrdercartblocLoaded extends OrdercartState {}
class OrdercartblocError extends OrdercartState {}
