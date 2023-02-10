import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/trading-bestoffer-silder/ChoosebrandApi/choosebrandApi.dart';
import '../../Repository/modelclass/choosebrandModelclass.dart';

part 'choosebrand_event.dart';
part 'choosebrand_state.dart';

class ChoosebrandBloc extends Bloc<ChoosebrandEvent, ChoosebrandState> {
  List<ChoosebrandModelclass>? choosebrandModelclass;
  ChoosebrandApi choosebrandApi=ChoosebrandApi();
  ChoosebrandBloc() : super(ChoosebrandInitial()) {
    on<ChoosebrandEvent>((event, emit) async{
      emit(Choosebrandblocloading());
      print('loading');
      try{
        choosebrandModelclass=await choosebrandApi.choosebrand();
        emit(Choosebrandblocloaded());
        print('loaded');
      }catch(e){
        emit(ChoosebrandblocError());
        print('ffffff');
      }
      // TODO: implement event handler
    });
  }
}
