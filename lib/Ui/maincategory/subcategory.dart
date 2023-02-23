import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Bloc/subcategory/subcategory_bloc.dart';
import '../../Repository/modelclass/subcategoryModel.dart';
import '../../main.dart';
import 'maincategory.dart';
class Subcategory extends StatefulWidget {
  const Subcategory({Key? key}) : super(key: key);

  @override
  State<Subcategory> createState() => _SubcategoryState();
}
late List<SubcategoryModel> subcategory1;
class _SubcategoryState extends State<Subcategory> {
  @override
  void initState() {

    BlocProvider.of<SubcategoryBloc>(context).add(FetchSubcategoryEvent());

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
    return BlocBuilder<SubcategoryBloc, SubcategoryState>(
        builder: (context, state) {
      if (state is SubcategoryblocLoading) {
        print("loding");
      }
      if (state is SubcategoryblocError) {
        print("error");
      }
      if (state is SubcategoryblocLoaded) {
        subcategory1= BlocProvider.of<SubcategoryBloc>(context).subcategory1;
        print("Loaded");

          return Card(
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
                    subcategory1.length ,
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
                              child: Image.network(basePath+"/sub-category/images/"+subcategory1![index].image!.url.toString(),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )),
            ),
          );


      }else{return Container();}});

}}
