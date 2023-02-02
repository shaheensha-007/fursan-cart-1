import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tradingnow_event.dart';
part 'tradingnow_state.dart';

class TradingnowBloc extends Bloc<TradingnowEvent, TradingnowState> {
  late List<TradingnowModelClass> TradingnowModelClass;
  TradingApi sliderApi=SliderApi();
  TradingnowBloc() : super(TradingnowInitial()) {
    on<FetchTradingnowEvent>((event, emit) async{
      emit(TradingnowLoading());
      print('loading');
      try{
        homemodelclass=await sliderApi.slider();
        emit(TradingnowblocLoaded());
        print('loaded');
      } catch(e){
        print(e);
        emit(TradingnowblocError());
        print('error');
      }
      // TODO: implement event handler
    });
  }
}
