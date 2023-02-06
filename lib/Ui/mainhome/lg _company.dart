import 'package:flutter/material.dart';
import 'package:fursancart/Ui/mainhome/home.dart';
class Lg_company extends StatefulWidget {
  const Lg_company({Key? key}) : super(key: key);

  @override
  State<Lg_company> createState() => _Lg_companyState();
}

class _Lg_companyState extends State<Lg_company> {
  
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

        title:Text("LG PRODUCTS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black,),),
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
              padding: const EdgeInsets.only(left: 20,top: 30),
              child: Container(
                height: mheight*0.10,
                width: mwidth*0.30,
                child: Image.asset("assets/TV-PNG-HD-Quality 1.png"),
              ),
            ),
            SizedBox(
              width: mwidth*0.02,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Text("Television 32’’ Smart TV",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.star_border)),
                  Text("₹ 50,000")
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
                    width: mwidth*0.20,
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
