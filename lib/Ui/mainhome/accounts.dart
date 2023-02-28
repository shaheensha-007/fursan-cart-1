import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text("My Account"),
        ),
      ),
      body: Column(children: [
      Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffFFC113)),
          child: Container(
            width: mwidth * 0.14,
            height: mheight * 0.1,
            child: Image.asset("assets/Ellipse 26.png"),
          )),
        SizedBox(
          width: mwidth * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.only(left:200,bottom:50),
          child: Text(
            "shaheen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: mheight*0.03,
        ),
        Card(
          child: Container(
            height: mheight*0.06,
            width: mwidth*0.30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text("order"),

          ),
        )
      ]
      ),
    );
  }
}
