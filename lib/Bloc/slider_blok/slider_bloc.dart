import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/SliderApi.dart';
import '../../Repository/modelclass/homemodelclass.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  late List<Homemodelclass> homemodelclass;
  SliderApi sliderApi=SliderApi();
  SliderBloc() : super(SliderInitial()) {
    on<FetchSliderEvent>((event, emit) async{
      // TODO: implement event handler
      emit(SliderblocLoading());
      print('loading');
      try{
  homemodelclass=await sliderApi.slider();
  homemodelclass=homemodelclass.where((element) => null).toList();
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
