import 'package:flutter/material.dart';

import 'mainhome/home.dart';

class Maincategory extends StatefulWidget {
  const Maincategory({Key? key}) : super(key: key);

  @override
  State<Maincategory> createState() => _MaincategoryState();
}

class _MaincategoryState extends State<Maincategory> {
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

        title:Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black,),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
        ],
      ),
      body: ListView(
        children: [

          SizedBox(
            height: mheight*0.03,
          ),

          Card(elevation: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: mheight*0.15,
                width: mwidth*0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 40,
                     child:Padding(
                       padding: const EdgeInsets.only(top: 15),
                       child: Container(width: mwidth*0.13,height: mheight*0.06,child:Image.asset('assets/kindpng_4225211 1.png',fit: BoxFit.cover,) ,),
                     )
                    ),
                    SizedBox(
                      width:mwidth*0.09 ,
                    ),
                    Text("Mobile\nAccessories",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Color(0xffA5A3A3)
                    )),
                    SizedBox(
                      width: mwidth*0.09,
                    ),
                    Container(
                      height: mheight*0.06,
                      width: mwidth*0.05,
                      child:  Icon(Icons.arrow_circle_down,size: 60,color: Color(0xffA5A3A3),),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
