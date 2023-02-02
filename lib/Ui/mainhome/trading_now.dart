import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Bloc/tradingnow_block/tradingnow_bloc.dart';

import '../../Repository/modelclass/TradingnowModelClass.dart';
import '../../main.dart';

class Trading_now extends StatefulWidget {
  const Trading_now({Key? key}) : super(key: key);

  @override
  State<Trading_now> createState() => _Trading_nowState();
}

class _Trading_nowState extends State<Trading_now> {
  late List<TradingnowModelClass> trading ;
  @override
  void initState() {
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
    return
      BlocBuilder<TradingnowBloc, TradingnowState>(
  builder: (context, state) {
      if (state is TradingnowLoading) {
        print("loding");
      }
      if (state is TradingnowblocError) {
        print("error");
      }
      if (state is TradingnowblocLoaded) {
        print("Loaded");

        trading = BlocProvider
            .of<TradingnowBloc>(context)
            .tradingnowModelClass;
    return Container(
        height: mheight*0.23,
        width: mwidth*0.45,color: Colors.red,
        child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (ctx,index)
        {return

          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(
              height: mheight*0.20,
              width: mwidth*0.35,
              color: Color(0xffEFEEEE),
              child: Column(
                children: [
                  Container(
                    height: mheight*0.12,
                    width: mwidth*0.35,
                    decoration: BoxDecoration(color: Color(0xffEFEEEE),
                        image: DecorationImage(image: NetworkImage( basePath + "/produc/images/"+trading[index].images!.first.url.toString()))
                    ),
                  ),
                  Container(
                    height: mheight*0.08,
                    width: mwidth*0.33,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Samsung Tv",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),
                        ),
                        Text("32” Full HD",style: TextStyle(fontSize: 10,color: Color(0xff999595)),),
                        Row(
                          children: [
                            Text("45000      ",style: TextStyle(fontSize: 8,decoration: TextDecoration.lineThrough,color:Color(0xff999595)),),
                            SizedBox(
                              width: mwidth*0.01,
                            ),
                            Text("40000",style: TextStyle(fontSize: 8,color: Color(0xff999595,)),)
                          ],
                        ),
                      ],
                    ),


                  )
                ],
              ),
            ),
          );}
    ),
      );
  }else{return Container();

  }
});}}
