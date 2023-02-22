import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:fursancart/Repository/modelclass/maincategoryModelclass.dart';
import 'package:fursancart/Ui/maincategory/maincategory.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/MaincategoryApi/maincategoryApi.dart';

part 'maincategory_event.dart';
part 'maincategory_state.dart';

class MaincategoryBloc extends Bloc<MaincategoryEvent, MaincategoryState> {
  late List<MaincategoryModelclass> category;
  MaincategoryApi maincategoryApi=MaincategoryApi();
  MaincategoryBloc() : super(MaincategoryInitial()) {
    on<MaincategoryEvent>((event, emit) async {
      emit(MaincategoryblocLoading());
      print('loading');
      try{
       category=(await maincategoryApi.Maincategory())!;
        emit(MaincategoryblocLoaded());
        print('loaded');
      }catch(e){
        emit(MaincategoryblocError());
        print('*****$e');
      }
      // TODO: implement event handler
    });
  }
}
