import 'package:flutter/material.dart';

import '../home.dart';

class Bestofferproduct extends StatefulWidget {
  const Bestofferproduct({Key? key}) : super(key: key);

  @override
  State<Bestofferproduct> createState() => _BestofferproductState();
}

class _BestofferproductState extends State<Bestofferproduct> {
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
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading:

        IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));}, icon: Icon(Icons.arrow_back,color: Colors.black,)),

        title:Text("Best offer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black,),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
        ],
      ),
      body:Container(
      height: mheight * 0.21,
    width: mwidth,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    Container(
    height: mheight * 0.20,
    width: mwidth * 0.35,
    color: Color(0xffEFEEEE),
    child: Image.asset("assets/vijay sir.jpg",
      fit: BoxFit.cover,
    )
    ),
          ]
      ),
    ),
    );
  }
}
