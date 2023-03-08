import 'package:flutter/material.dart';

class Mgtaccount extends StatefulWidget {
  const Mgtaccount({Key? key}) : super(key: key);

  @override
  State<Mgtaccount> createState() => _MgtaccountState();
}

class _MgtaccountState extends State<Mgtaccount> {
  @override
  Widget build(BuildContext context) {
    var mheight=MediaQuery.of(context).size.height;
    var mwidth= MediaQuery.of(context).size.width;
    return Scaffold(
     appBar: AppBar(
       title: Text("MANAGE YOUR ACCOUNT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
     ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: mheight*0.05,
          ),
          Padding(
            padding:  EdgeInsets.only(left:mwidth*0.05 ),
            child: Container(
              height: mheight*0.08,
              width: mwidth*0.650,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: mwidth*0.08),
                    child: Text("9876543210",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left:mwidth*0.05 ),
                    child: Image(image: AssetImage("assets/tik.png")),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: mwidth*0.20),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
