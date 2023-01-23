import 'package:flutter/material.dart';

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
      Container(
        height: 0.200,
      )    
    ],
    )
    ,
    );
  }
}