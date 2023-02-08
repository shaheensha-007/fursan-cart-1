import 'package:flutter/material.dart';

class Lgwashingmachine extends StatefulWidget {
  const Lgwashingmachine({Key? key}) : super(key: key);

  @override
  State<Lgwashingmachine> createState() => _LgwashingmachineState();
}

class _LgwashingmachineState extends State<Lgwashingmachine> {
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

        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,)),

        title:Text("LG Washing Machine",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black,),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
        ],
      ),
      body: Container(
        height: mheight*0.15,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30),
              child: Container(
                height: mheight*0.10,
                width: mwidth*0.30,
                child: Image.asset("assets/in-front-loading-washer-ww10t604clhs4-374537-ww80t604dlb-tl-383418721 1.png"),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Text("Automated Washing Machine",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.star_border)),
                  Text("₹ 25,000")
                ],
              ),
            ),
            SizedBox(
              width: mwidth*0.02,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),
                  ),SizedBox(
                    height: mheight*0.06,
                    width: mwidth*0.15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
