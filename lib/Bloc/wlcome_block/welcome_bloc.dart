import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/api/SliderApi.dart';
import '../../Repository/modelclass/usermodel.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  late Usermodel usermodel;
  WelcomeApi welcomeApi=WelcomeApi();
  WelcomeBloc() : super(WelcomeInitial()) {
    on<FetchWelcomeEvent>((event, emit)async {
      // TODO: implement event handler
      emit(welcomeblocLoading());
      print('loading');
      try{

        usermodel= await welcomeApi.login(event.email,event.password);
        emit(welcomeblocLoaded());
        print('loaded');
      } catch(e){
        print(e);
        emit(welcomeblocError());
        print('error');
      }
    });
  }
  
}
