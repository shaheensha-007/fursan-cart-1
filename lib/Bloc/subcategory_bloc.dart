import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/api/SubcategoryApi/subcategoryApi.dart';
import '../Repository/modelclass/subcategoryModel.dart';

part 'subcategory_event.dart';
part 'subcategory_state.dart';

class SubcategoryBloc extends Bloc<SubcategoryEvent, SubcategoryState> {
  SubcategoryBloc() : super(SubcategoryInitial()) {
    late List<SubcategoryModel> subcategory;
    SubcategoryApi subcategoryApi=SubcategoryApi();
    on<SubcategoryEvent>((event, emit) async {

      emit(SubcategoryblocLoading());
      print('loading');
      try{
        subcategory=(await  subcategoryApi.Maincategory()!;
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
