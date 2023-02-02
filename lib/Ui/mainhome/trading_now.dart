import 'package:flutter/material.dart';

class Trading_now extends StatefulWidget {
  const Trading_now({Key? key}) : super(key: key);

  @override
  State<Trading_now> createState() => _Trading_nowState();
}

class _Trading_nowState extends State<Trading_now> {
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
    return
      Container(
        height: mheight*0.23,
        width: mwidth*0.45,
        child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(
              height: mheight*0.20,
              width: mwidth*0.35,
              color: Color(0xffEFEEEE),
              child: Column(
                children: [
                  Container(
                    height: mheight*0.12,
                    width: mwidth*0.35,
                    decoration: BoxDecoration(color: Color(0xffEFEEEE),
                        image: DecorationImage(image: AssetImage("assets/TV-PNG-HD-Quality 1.png"))
                    ),
                  ),
                  Container(
                    height: mheight*0.08,
                    width: mwidth*0.33,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Samsung Tv",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),
                        ),
                        Text("32” Full HD",style: TextStyle(fontSize: 10,color: Color(0xff999595)),),
                        Row(
                          children: [
                            Text("45000      ",style: TextStyle(fontSize: 8,decoration: TextDecoration.lineThrough,color:Color(0xff999595)),),
                            SizedBox(
                              width: mwidth*0.01,
                            ),
                            Text("40000",style: TextStyle(fontSize: 8,color: Color(0xff999595,)),)
                          ],
                        ),
                      ],
                    ),


                  )
                ],
              ),
            ),
          )
        ],
    ),
      );
  }
}
