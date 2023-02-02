

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/trading-bestoffer-silder/SliderApi.dart';
import '../../Repository/modelclass/BannerModelClass.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  late List<Homemodelclass> homemodelclass; late List<Homemodelclass> bestoffer;
  late List<Homemodelclass> slider;
  SliderApi sliderApi=SliderApi();
  SliderBloc() : super(SliderInitial()) {
    on<FetchSliderEvent>((event, emit) async{
      // TODO: implement event handler

    });
  }
}
