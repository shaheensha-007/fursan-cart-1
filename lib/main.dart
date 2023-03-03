import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Bloc/ordercartBloc/ordercart_bloc.dart';
import 'package:fursancart/Bloc/slider_blok/slider_bloc.dart';
import 'package:fursancart/Bloc/tradingnow_block/tradingnow_bloc.dart';
import 'package:fursancart/Bloc/wlcome_block/welcome_bloc.dart';
import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:fursancart/Ui/maincategory/maincategory.dart';
import 'package:fursancart/Ui/accounts/myaccounts.dart';
import 'package:fursancart/Ui/mainhome/bestoffer/bestofferproduct.dart';
import 'package:fursancart/Ui/mainhome/bottomnavigationbar.dart';
import 'package:fursancart/Ui/mainhome/home.dart';
import 'package:fursancart/Ui/mainhome/lg%20_company.dart';
import 'package:fursancart/Ui/mainhome/lgwashingmachine.dart';
import 'package:fursancart/Ui/mainhome/slider1.dart';
import 'package:fursancart/Ui/mainhome/trandingnow/tadingproduct.dart';


import 'Bloc/choosebrand/choosebrand_bloc.dart';
import 'Bloc/maincategory/maincategory_bloc.dart';
import 'Bloc/signup_block/signup_bloc.dart';
import 'Bloc/subcategory/subcategory_bloc.dart';
import 'Bloc/tradingproduct_block/tradingproduct_bloc.dart';
import 'Ui/openpage.dart';
import 'Ui/ordercart.dart';
final String basePath = 'http://fursancart.rootsys.in/api';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    return MultiBlocProvider(providers: [
            BlocProvider(create: (context) => SignupBloc()),
            BlocProvider(create: (context)=> WelcomeBloc()),
            BlocProvider(create: (context)=>SliderBloc()),
            BlocProvider(create: (context)=>TradingnowBloc()),
            BlocProvider(create: (context)=>ChoosebrandBloc()),
            BlocProvider(create: (context)=>TradingproductBloc()),
            BlocProvider(create:(context)=>MaincategoryBloc()),
            BlocProvider(create: (context)=>SubcategoryBloc()),
            BlocProvider(create: (context)=>OrdercartBloc()),

    ],
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            home:Accounts()
            ),
          );
  }
}
