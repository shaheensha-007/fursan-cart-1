import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/trading-bestoffer-silder/tradingApi.dart';
import '../../Repository/modelclass/TradingnowModelClass.dart';
import '../../Repository/modelclass/TradingnowModelClass.dart';



part 'tradingnow_event.dart';
part 'tradingnow_state.dart';

class TradingnowBloc extends Bloc<TradingnowEvent, TradingnowState> {
  late List<TradingnowModelClass> tradingnowModelClass;
  TradingApi tradingApi=TradingApi();
  TradingnowBloc() : super(TradingnowInitial()) {
    on<FetchTradingnowEvent>((event, emit) async{
      emit(TradingnowLoading());
      print('loading');
      try{
        tradingnowModelClass=await tradingApi.trading();
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
