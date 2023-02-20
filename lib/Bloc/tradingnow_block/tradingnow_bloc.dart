import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/trading-bestoffer-silder/tradingapi/tradingApi.dart';
import '../../Repository/modelclass/TradingnowModelClass.dart';




part 'tradingnow_event.dart';
part 'tradingnow_state.dart';

class TradingnowBloc extends Bloc<TradingnowEvent, TradingnowState> {

  late List<TradingnowModel> tradingnowModel;
  TradingApi tradingApi=TradingApi();
  TradingnowBloc() : super(TradingnowInitial()) {
    on<FetchTradingnowEvent>((event, emit) async{
      emit(TradingnowLoading());
      print('loading');
      try{
        tradingnowModel=await tradingApi.trading();
        emit(TradingnowblocLoaded());
        print('loaded');
      } catch(e){

        emit(TradingnowblocError());
        print('********$e');
      }
      // TODO: implement event handler
    });
  }
}
