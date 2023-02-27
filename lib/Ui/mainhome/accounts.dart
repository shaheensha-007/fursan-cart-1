import 'package:flutter/material.dart';

class Accounts extends StatefulWidget
{
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts>
{
  @override
  Widget build(BuildContext context)
  {
    var mheight=MediaQuery.of(context).size.height;
    var mwidth=MediaQuery.of(context).size.width;
    return Scaffold(
appBar: AppBar(
  title: Text("My Account"),
),
      body: Row(
        children: [
          Container(
      decoration: BoxDecoration(
      shape: BoxShape.circle,
          color: Color(0xffFFC113)),
        child: Container(
          width: mwidth * 0.14,
          height: mheight * 0.1,
          child: Image.asset("assets/Ellipse 26.png"),
          )
    ),
          SizedBox(
            width: mwidth*0.03,
          ),
Text(),
    );
  }
}
