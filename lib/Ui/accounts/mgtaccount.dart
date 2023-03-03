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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: mheight*0.06,
              width: mwidth*0.500,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
