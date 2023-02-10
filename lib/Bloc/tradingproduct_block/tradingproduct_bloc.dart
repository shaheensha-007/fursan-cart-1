import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fursancart/Bloc/choosebrand/choosebrand_bloc.dart';
import 'package:fursancart/Repository/api/trandingproductApi/tradingproductApi.dart';
import 'package:fursancart/Ui/mainhome/trandingnow/tadingproduct.dart';
import 'package:meta/meta.dart';

import '../../Repository/modelclass/choosebrandModelclass.dart';

part 'tradingproduct_event.dart';
part 'tradingproduct_state.dart';

class TradingproductBloc extends Bloc<TradingproductEvent, TradingproductState> {
  late List<ChoosebrandModelclass> choosebrandModelclass;
  TradingproductApi tradingproductApi=TradingproductApi();
  TradingproductBloc() : super(TradingproductInitial()) {
    on<FetchTradingproduct>((event, emit) async{
      emit(Tradingproductblocloding());
      print('loding');
      try{
        choosebrandModelclass= (await tradingproductApi.tradingproduct())!;
        emit(Tradingproductblocloaded());
        print('loaded');
      }catch(e){
        emit(TradingproductbloError());
        print('vvvvvvvv');
      }
      // TODO: implement event handler
    });
  }
}
