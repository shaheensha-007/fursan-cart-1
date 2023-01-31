import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Bloc/slider_blok/slider_bloc.dart';
import 'package:fursancart/Repository/modelclass/homemodelclass.dart';
import 'package:fursancart/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  State<Slider1> createState() => _Slider1State();
}



class _Slider1State extends State<Slider1> {
  int _activeindex = 0;
  late List<Homemodelclass> slidermodel;
  @override
  void initState() {
    BlocProvider.of<SliderBloc>(context).add(FetchSliderEvent());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;

    return BlocBuilder<SliderBloc, SliderState>(

  builder: (context, state) {
    if (state is SliderblocLoading) {
      print("loding");
    }
    if (state is SliderblocError) {
      print("error");
    }
    if (state is SliderblocLoaded) {
      print("Loaded");

      slidermodel = BlocProvider
          .of<SliderBloc>(context)
          .slider;
      return Stack(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: CarouselSlider.builder(
              itemCount: slidermodel.length,
              itemBuilder: (context,
                  index,
                  realindex,) {
                var height = mheight * 0.250;
                var width = mwidth * 0.99;
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: width,
                    height: height,
                    child: Image.asset(
                      basePath + "/banner/images/",
                      fit: BoxFit.cover,
                    ));
              },
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    _activeindex = index;
                  });
                },
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
              ),
            )),
        Positioned(
            left: mwidth * 0.45,
            bottom: 0.008,
            child: indicator(context, slidermodel.length, _activeindex))
      ]);
    }
  else{return Container();}}
);
  }
}


Widget indicator(BuildContext context, int count, int index) {
  var mwidth = MediaQuery.of(context).size.width;
  var mheight = MediaQuery.of(context).size.height;
  return Container(
    width: mwidth * 0.158,
    height: mheight * 0.018,
    decoration: BoxDecoration(
        color: Colors.black12, borderRadius: BorderRadius.circular(12)),
    child: Center(
      child: AnimatedSmoothIndicator(
        activeIndex: index,
        count: count,
        effect: JumpingDotEffect(
            dotWidth: 7,
            dotHeight: 7,
            activeDotColor: Color(0xfff2ec52),
            dotColor: Colors.white),
      ),
    ),
  );
}
