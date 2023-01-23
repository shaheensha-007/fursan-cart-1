import 'package:flutter/material.dart';
import 'package:fursancart/Ui/welcome.dart';

import 'letstart.dart';

class Openpage extends StatefulWidget {
  const Openpage({Key? key}) : super(key: key);

  @override
  State<Openpage> createState() => _OpenpageState();
}

class _OpenpageState extends State<Openpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "HELLO",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top:60),
            child: Container(
              height: 320,
              width: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/HOME 1_Mesa de trabajo 1 1.png"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "Let’s Start your\n next level shopping...",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext a) => Welcome()));
            },

            child: Center(
              child: Container(
                width: 360,
                height: 60,
                decoration: BoxDecoration(
                  color:Color(0xffFFC113),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text("LOG IN",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Dont have an account ?",style: TextStyle(fontSize:10,fontWeight:FontWeight.bold ),),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext a) => Letstart ()));
            },

            child: Container(
              width: 160,
              height: 60,
              decoration: BoxDecoration(
                color:Color(0xff264050),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(child: Text("Sigup",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
        ]));
  }
}
