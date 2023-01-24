part of 'slider_bloc.dart';

@immutable
abstract class SliderState {}

class SliderInitial extends SliderState {}
class SliderblocLoading extends SliderState{}
class SliderblocLoaded extends SliderState {}
class SliderblocError extends SliderState {}