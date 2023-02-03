import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lg _company.dart';

class Choosebrand extends StatefulWidget {
  const Choosebrand({Key? key}) : super(key: key);

  @override
  State<Choosebrand> createState() => _ChoosebrandState();
}

class _ChoosebrandState extends State<Choosebrand> {

  Widget build(BuildContext context) {
    var mheight = MediaQuery
        .of(context)
        .size
        .height;
    var mwidth = MediaQuery
        .of(context)
        .size
        .width;
    return ListView.builder(itemCount: 2,
       itemBuilder: (BuildContext context, int index) { return GestureDetector(
        onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Lg_company()));},
    child: Container(
    height: mheight*0.20,
    width: mwidth*0.20,
    decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage("assets/mi logo.png"),
    fit: BoxFit.cover,)

    ),

    )); });

  }
}
