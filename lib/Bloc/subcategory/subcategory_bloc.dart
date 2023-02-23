import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/SubcategoryApi/subcategoryApi.dart';
import '../../Repository/modelclass/subcategoryModel.dart';

part 'subcategory_event.dart';
part 'subcategory_state.dart';

class SubcategoryBloc extends Bloc<SubcategoryEvent, SubcategoryState> {
  late List<SubcategoryModel> subcategory1;
  SubcategoryApi subcategoryApi=SubcategoryApi();
  SubcategoryBloc() : super(SubcategoryInitial()) {

    on<SubcategoryEvent>((event, emit) async {

      emit(SubcategoryblocLoading());
      print('loading');
      try{
        subcategory1=await subcategoryApi.subcategory();
        emit(SubcategoryblocLoaded());
        print('loaded');
      }catch(e){
        emit(SubcategoryblocError());
        print('*****$e');
      }
      // TODO: implement event handler
    });
  }
}
