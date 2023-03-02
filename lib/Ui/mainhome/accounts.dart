import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
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
      appBar: AppBar(
        title: Center(
          child: Text("My Account"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Row(
        children: [
        Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFFC113)),
          child: Container(
              width: mwidth * 0.15,
              height: mheight * 0.1,
              child: Image.asset("assets/Ellipse 26.png")
          ),
        ),
    ),
    SizedBox(
    width: mwidth*0.09,
    ),
    Text("shaheen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
    ],
    ),
    Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Column(
        children: [
          Row(
          children: [
          Card(
          child: Container(
          height: mheight*0.06,
          width: mwidth*0.40,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          child: Image.asset("assets/bagtick2.png"),
          ),
          SizedBox(
          width: mwidth*0.04,
          ),
          Text("Orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          SizedBox(
          width: mwidth*0.09,
          ),
          Icon(Icons.arrow_forward_ios_outlined),

          ],
          ),
          )
          ),
          ),
          SizedBox(
            width: mwidth*0.040,
          ),
          Card(
          child: Container(
          height: mheight*0.06,
          width: mwidth*0.40,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          child: Image.asset("assets/star.png"),
          ),
          SizedBox(
          width: mwidth*0.04,
          ),
          Text("Favourite",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          SizedBox(
          width: mwidth*0.05,
          ),
          Icon(Icons.arrow_forward_ios_outlined),

          ],
          ),
          ),
          )
          ),

          ],
          ),
          SizedBox(
            height: mheight*0.03,
          ),
          Row(
              children: [
                Card(
                  child: Container(
                      height: mheight*0.06,
                      width: mwidth*0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset("assets/order.png"),
                            ),
                            SizedBox(
                              width: mwidth*0.04,
                            ),
                            Text("Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            SizedBox(
                              width: mwidth*0.15,
                            ),
                            Icon(Icons.arrow_forward_ios_outlined),

                          ],
                        ),
                      )
                  ),
                ),
                SizedBox(
                  width: mwidth*0.040,
                ),
                Card(
                    child: Container(
                      height: mheight*0.06,
                      width: mwidth*0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: mwidth*0.01,
                            ),
                            Text("Saved Address ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            SizedBox(
                              width: mwidth*0.05,
                            ),
                            Icon(Icons.arrow_forward_ios_outlined),

                          ],
                        ),
                      ),
                    )
                ),

              ]

          ),
        ],
    )
    ),
     SizedBox(
    height: mheight*0.05,

    ),
     Padding(
         padding: const EdgeInsets.only(left: 30),
         child: Card(
           child: Container(
             height: mheight*0.10,
             width: mwidth*0.860,
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(height: mheight*0.09,
                     child: Image.asset("assets/cardedit.png")
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Manage Accounts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     Text("Your account details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),)
                   ],
                 ),
                 SizedBox(
                   width: mwidth*0.10,
                 ),
                 IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
               ],
             ),
           ),
         ),
     ),
     SizedBox(
         height: mheight*0.05,
     ),
     Card(

         child: Padding(
           padding: const EdgeInsets.only(top: 15),
           child: Container(
             height: mheight*0.20,
             width: mwidth,
             child: Padding(
               padding: const EdgeInsets.only(left: 50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("FAQs",style: TextStyle(fontWeight: FontWeight.w500),),
                   SizedBox(
                     height: mheight*0.02,
                   ),
                   Text("ABOUT US",style: TextStyle(fontWeight: FontWeight.w500),),
                   SizedBox(
                     height: mheight*0.02,
                   ),
                   Text("TERMS OF USE",style: TextStyle(fontWeight: FontWeight.w500),),
                   SizedBox(
                     height: mheight*0.02,
                   ),
                   Text("PRIVACY POLICY",style: TextStyle(fontWeight: FontWeight.w500),),
                 ],
               ),
             ),
           ),
         ),
     ),
              Container(
                height: mheight*0.20,
                width: mwidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: mheight*0.06,
                      width: mwidth*0.800,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffFFC113),width: mwidth*0.006
                          )),
                     child: Center(
                      child: Text("LOG OUT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                        ),

                ),
                ),
  ]
    ),
      )


    ])));
  }
}
