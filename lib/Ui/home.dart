import 'package:flutter/material.dart';
import 'package:fursancart/Ui/slider1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Column(
              children: [
                Container(
                  width: mwidth * 0.4,
                  height: mheight * 0.060,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/FURSAN LOGO-01 1.png"),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: IconButton(icon: Icon(Icons.favorite_border,),
                color: Color(0xff636363),
                onPressed: () {},
              ),

            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart),
              color: Color(0xff636363),
            )
          ]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: mheight*0.02,
          ),
      Container(
      child: TextFormField(
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        icon: Icon(Icons.search_rounded),
        hintText: "Search by keyword or Brand",
        hintStyle: TextStyle(fontSize: 14),

      ),
    ),
    width: mwidth*0.980,
    height: mheight*0.050,
    decoration: BoxDecoration(
    border: Border.all(color: Color(0xffA5A5A5),width: 0.02),
    borderRadius: BorderRadius.circular(8),
    ),
    ),
      SizedBox(
        height: mheight*0.02,
      ),
      Container(
        height: mheight*0.250,
        width: mwidth*0.9,
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(17)),
        child: Slider1(),
      ),
      SizedBox(
        height: mheight*0.02,
      ),
      Padding(
        padding: const EdgeInsets.only(right:230),
        child: Text("Choose Brand",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Color(0xff000000,
        )),),
      ),
          SizedBox(
            height:mheight*0.02,
          ),
       Container(
         height: mheight*0.10,
         width: mwidth,
         child: ListView(
           scrollDirection:Axis.horizontal,
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Container(
                   height: mheight*0.20,
                   width: mwidth*0.20,
                   color: Colors.red,
                 ),
             ),
             SizedBox(
               width: mwidth*0.03,
             ),
             Container(
               height: mheight*0.20,
               width: mwidth*0.20,
               color: Colors.red,
             ),
             SizedBox(
               width:mwidth*0.03 ,
             ),
             Container(
               height: mheight*0.20,
               width: mwidth*0.20,
               color: Colors.red,
             ),
             SizedBox(
               width: mwidth*0.03,
             ),
             Container(
               height: mheight*0.20,
               width: mwidth*0.20,
               color: Colors.red,
             ),
           ],

         ),
       ),
          SizedBox(
            height: mheight*0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text("Tranding Now",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color: Color(0xff000000,)),),
          )
    ],
    )
    ,
    );
  }
}