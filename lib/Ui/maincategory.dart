import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';

import 'mainhome/home.dart';

class Maincategory extends StatefulWidget {
  const Maincategory({Key? key}) : super(key: key);

  @override
  State<Maincategory> createState() => _MaincategoryState();
}

class _MaincategoryState extends State<Maincategory> {
  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Category",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
          ],
        ),
        body: ListView.builder(itemCount: 3,itemBuilder:(ctx,index){
          return
          Card(
              elevation: 5,
              child: ExpansionTile(
                  title: Text("Mobile\nAccessories",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Color(0xffA5A3A3))),
                  leading: Container(
                    width: mwidth * 0.13,
                    height: mheight * 0.06,
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 40,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Image.asset(
                            'assets/kindpng_4225211 1.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  children: [
                    Card(
                      child: Container(
                        height: mheight * 0.25,
                        child: GridView.count(
                            padding: EdgeInsets.only(
                                top: mheight * 0.04,
                                left: mwidth * 0.03,
                                right: mwidth * 0.03),
                            crossAxisCount: 5,
                            crossAxisSpacing: mheight * 0.01,
                            mainAxisSpacing: mwidth * 0.01,
                            shrinkWrap: true,
                            children: List.generate(
                             8 ,
                                  (index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFFC113)),
                                    child: Center(
                                      child: Container(
                                        width: mwidth * 0.14,
                                        height: mheight * 0.1,
                                        child: Image.asset("",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )),
                      ),
                    )
                  ]));}
        ));
  }
}
