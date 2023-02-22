import 'package:flutter/material.dart';

class Ordercart extends StatefulWidget {
  const Ordercart({Key? key}) : super(key: key);

  @override
  State<Ordercart> createState() => _OrdercartState();
}

class _OrdercartState extends State<Ordercart> {
  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery
        .of(context)
        .size
        .height;
    var mwidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(backgroundColor: Colors.white,
     body: Column(
      children: [
        Center(
          child: Container(
            height: mheight*0.500,
            width: mwidth*0.200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/samsung-32-smart-tv-500x500-removebg-preview 3.png"))
            ),
            ),
        )
      ],
    )
    );
  }
}
