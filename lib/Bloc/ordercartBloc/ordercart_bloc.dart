import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fursancart/Repository/api/ordercartApi/ordercartApi.dart';
import 'package:fursancart/Ui/mainhome/Choosebrand.dart';
import 'package:fursancart/Ui/ordercart.dart';
import 'package:meta/meta.dart';

import '../../Repository/modelclass/ordercartModel.dart';

part 'ordercart_event.dart';
part 'ordercart_state.dart';

class OrdercartBloc extends Bloc<OrdercartEvent, OrdercartState> {
  late List<OrdercartModel> Ordercart1;
  OrdercartApi ordercartApi=OrdercartApi();
  OrdercartBloc() : super(OrdercartInitial()) {
    on<OrdercartEvent>((event, emit) {
      on<OrdercartEvent>((event, emit) async{
        emit(OrdercartblocLoading());
        print('loading');
        try{
          Ordercart1=await ordercartApi.Ordercart();
          emit(OrdercartblocLoaded());
          print('loaded');
        }catch(e){
          emit(OrdercartblocError());
          print('ffffff');
      // TODO: implement event handler
    }});
  });}}
