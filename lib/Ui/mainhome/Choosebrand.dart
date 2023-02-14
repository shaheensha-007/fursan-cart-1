import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/main.dart';

import '../../Bloc/choosebrand/choosebrand_bloc.dart';
import '../../Repository/modelclass/choosebrand.dart';
import 'lg _company.dart';

class Choosebrand extends StatefulWidget {
  const Choosebrand({Key? key}) : super(key: key);

  @override
  State<Choosebrand> createState() => _ChoosebrandState();
}
late List<ChoosebrandModel> choosebrand;
class _ChoosebrandState extends State<Choosebrand> {

  @override
  void initState() {
    BlocProvider.of<ChoosebrandBloc>(context).add(FetchChoosebrandEvent());
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    var mheight = MediaQuery
        .of(context)
        .size
        .height;
    var mwidth = MediaQuery
        .of(context)
        .size
        .width;

    return BlocBuilder<ChoosebrandBloc, ChoosebrandState>(
  builder: (context, state) {
      if (state is Choosebrandblocloading) {
        print("loding");
      }
      if (state is ChoosebrandblocError) {
        print("error");
      }
      if (state is Choosebrandblocloaded) {
        choosebrand = BlocProvider.of<ChoosebrandBloc>(context).choose;
        print("Loaded");

        return ListView.builder(itemCount: choosebrand.length,scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {

              return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lg_company()));
                  },
                  child: Container(
                    height: mheight * 0.20,
                    width: mwidth * 0.20,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(
                            basePath + "/brand/images/" + choosebrand![index]
                                .image!.url.toString()),
                          fit: BoxFit.cover,)

                    ),

                  ));
            });
        }else{return Container();} }
);

  }
}
