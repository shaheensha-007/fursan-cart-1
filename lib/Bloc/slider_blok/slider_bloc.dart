import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/SliderApi.dart';
import '../../Repository/modelclass/homemodelclass.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  late List<Homemodelclass> homemodelclass; late List<Homemodelclass> bestoffer;
  late List<Homemodelclass> slider;
  SliderApi sliderApi=SliderApi();
  SliderBloc() : super(SliderInitial()) {
    on<FetchSliderEvent>((event, emit) async{
      // TODO: implement event handler
      emit(SliderblocLoading());
      print('loading');
      try{
  homemodelclass=await sliderApi.slider();
  slider=homemodelclass.where((element) => element.tag==null).toList();
  bestoffer=homemodelclass.where((element) => element.tag!=null).toList();
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
