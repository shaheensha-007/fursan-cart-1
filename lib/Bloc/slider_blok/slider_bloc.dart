import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderInitial()) {
    on<SliderEvent>((event, emit) {
      // TODO: implement event handler
      emit(SliderblocLoading());
      print('loading');
      try{

        emit(SliderblocLoaded());
        print('loaded');
      } catch(e){
        print(e);
        emit(SliderblocError());
        print('error');
      }
    });
  }
}
