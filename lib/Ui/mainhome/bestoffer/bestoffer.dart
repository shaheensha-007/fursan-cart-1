import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Ui/mainhome/Choosebrand.dart';

import '../../../Bloc/slider_blok/slider_bloc.dart';
import '../../../Repository/modelclass/BannerModelClass.dart';
import '../../../main.dart';

class Bestoffer extends StatefulWidget {
  const Bestoffer({Key? key}) : super(key: key);

  @override
  State<Bestoffer> createState() => _BestofferState();
}

late List<Homemodelclass> bestoffermodel;

class _BestofferState extends State<Bestoffer> {
  void initState() {
    BlocProvider.of<SliderBloc>(context).add(FetchSliderEvent());
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
    return Container(
      height: mheight * 0.21,
      width: mwidth,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: BlocBuilder<SliderBloc, SliderState>(
              builder: (context, state) {
      if (state is SliderblocLoading) {
        print("loding");
      }
      if (state is SliderblocError) {
        print("error");
      }
      if (state is SliderblocLoaded) {
        print("Loaded");

        bestoffermodel = BlocProvider
            .of<SliderBloc>(context)
            .bestoffer;
                return choosebrand.isEmpty?Center(child: Text('No data'),): Container(
                    height: mheight * 0.20,
                    width: mwidth * 0.35,
                    color: Color(0xffEFEEEE),
                    child: Image.network(basePath + "/banner/images/"+bestoffermodel.first.banner!.first.url.toString(),
                      fit: BoxFit.cover,)
                );}else{return Container();}
              },
            ),
          )
        ],
      ),
    );
  }
}
