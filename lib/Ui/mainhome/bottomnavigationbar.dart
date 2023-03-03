import 'package:flutter/material.dart';
import 'package:fursancart/Ui/maincategory/maincategory.dart';
import 'package:fursancart/Ui/mainhome/home.dart';
import 'package:fursancart/Ui/mainhome/order.dart';
import 'package:fursancart/Ui/mainhome/trandingnow/trading_now.dart';

import '../accounts/myaccounts.dart';

class Bottomnavigationbar1 extends StatefulWidget {
  const Bottomnavigationbar1({Key? key}) : super(key: key);

  @override
  State<Bottomnavigationbar1> createState() => _Bottomnavigationbar1State();
}

class _Bottomnavigationbar1State extends State<Bottomnavigationbar1> {
  final screens=[Home(),Maincategory(),Order(),Accounts()];
  int  Currentindex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length:2,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels:true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xff000000),
          unselectedItemColor: Color(0xff00000),
          currentIndex: Currentindex,
          onTap: (index){
            setState(() {
              Currentindex=index;
            });
        },
        items: [
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/home3.png"),
          color: Color(0xff264050)),
          label: "Home",
          ),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/category2.png"),
              color: Color(0xff264050)),
            label: "category",
          ),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/bagtick2.png"),
              color: Color(0xff264050)),
            label: "Order",
          ),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/profilecircle.png"),
              color: Color(0xff264050)),
            label: "Accounts",
          ),
          ],

        ),
        body:screens[Currentindex] ,
      ),
    );
  }
}
