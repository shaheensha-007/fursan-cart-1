import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:fursancart/Repository/modelclass/maincategoryModelclass.dart';
import 'package:fursancart/Repository/modelclass/productmodleclass.dart';
import 'package:fursancart/Ui/maincategory/subcategory.dart';
import 'package:fursancart/main.dart';

import '../../Bloc/maincategory/maincategory_bloc.dart';
import '../../Bloc/subcategory/subcategory_bloc.dart';
import '../../Repository/modelclass/subcategoryModel.dart';
import '../mainhome/home.dart';

class Maincategory extends StatefulWidget {
  const Maincategory({Key? key}) : super(key: key);

  @override
  State<Maincategory> createState() => _MaincategoryState();
}
late List<MaincategoryModelclass> category;

class _MaincategoryState extends State<Maincategory> {
  @override
  void initState() {
    BlocProvider.of<MaincategoryBloc>(context).add(FetchMaincategoryEvent());

    // TODO: implement initState
    super.initState();
  }

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
        body: BlocBuilder<MaincategoryBloc, MaincategoryState>(
            builder: (context, state) {
              if (state is MaincategoryblocLoading) {
                print("loding");
              }
              if (state is MaincategoryblocError) {
                print("error");
              }
              if (state is MaincategoryblocLoaded) {
                category = BlocProvider
                    .of<MaincategoryBloc>(context)
                    .category;
                print("Loaded");
                return ListView.builder(
                    itemCount: category.length, itemBuilder: (ctx, index) {
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
                                    padding: EdgeInsets.only(top: 15),
                                    child: Image.network(
                                      basePath + "/category/images/" +
                                          category![index].image!.url
                                              .toString(),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            children: [ Subcategory()]));
                });
              } else {
                return Container();
              }
            }));
  }
}