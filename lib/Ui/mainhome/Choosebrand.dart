import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Repository/modelclass/choosebrandModelclass.dart';
import 'package:fursancart/main.dart';

import '../../Bloc/choosebrand_bloc/choosebrand_bloc.dart';
import 'lg _company.dart';

class Choosebrand extends StatefulWidget {
  const Choosebrand({Key? key}) : super(key: key);

  @override
  State<Choosebrand> createState() => _ChoosebrandState();
}
late List <ChoosebrandModelclass> choosebrand;
class _ChoosebrandState extends State<Choosebrand> {

  @override
  void initState() {
    BlocProvider.of<ChoosebrandBloc>(context).add(FetchChoosebrandEvent());
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    var mheight = MediaQuery
        .of(context)
        .size
        .height;
    var mwidth = MediaQuery
        .of(context)
        .size
        .width;choosebrand = BlocProvider
        .of<ChoosebrandBloc>(context)
        .choosebrandModelClass;
    return BlocBuilder<ChoosebrandBloc, ChoosebrandState>(
  builder: (context, state) {
      if (state is ChoosebrandblocLoading) {
        print("loding");
      }
      if (state is ChoosebrandblocError) {
        print("error");
      }
      if (state is ChoosebrandblocLoaded) { print(choosebrand.length.toString());
        print("Loaded");
      }return ListView.builder(itemCount:choosebrand.length,
       itemBuilder: (BuildContext context, int index) {


        return GestureDetector(
        onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Lg_company()));},
    child: Container(
    height: mheight*0.20,
    width: mwidth*0.20,
    decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage(basePath+"/brand/images/"+choosebrand[index].image!.url.toString()),
    fit: BoxFit.cover,)

    ),

    )); });
  },
);

  }
}
