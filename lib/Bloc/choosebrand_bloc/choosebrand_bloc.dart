import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fursancart/Repository/api/trading-bestoffer-silder/choosebrandsapi/ChoosebrandApi.dart';
import 'package:fursancart/Repository/modelclass/choosebrandModelclass.dart';
import 'package:meta/meta.dart';

part 'choosebrand_event.dart';
part 'choosebrand_state.dart';

class ChoosebrandBloc extends Bloc<ChoosebrandEvent, ChoosebrandState> {
  late List<ChoosebrandModelclass> choosebrandModelClass;
  ChoosebrandApi choosebrandApi=ChoosebrandApi();
  ChoosebrandBloc() : super(ChoosebrandInitial()) {
    on<ChoosebrandEvent>((event, emit) async {
      emit(ChoosebrandblocLoading());
      print('loading');
      try{
        choosebrandModelClass=await choosebrandApi.choosebrand();
        emit(ChoosebrandblocLoaded());
        print('loaded');
      } catch(e){

        emit(ChoosebrandblocError());
        print('********$e');
      }
      // TODO: implement event handler

    });
  }
}
