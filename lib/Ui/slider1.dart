import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  State<Slider1> createState() => _Slider1State();
}

List<String> url = [
  'assets/vijay sir.jpg',
  'assets/vijay sir2.jpg',
  'assets/vijay sir1.jpg',
];

class _Slider1State extends State<Slider1> {
  int _activeindex = 0;

  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;

    return Stack(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: CarouselSlider.builder(
            itemCount: url.length,
            itemBuilder: (
              context,
              index,
              realindex,
            ) {
              var height = mheight * 0.250;
              var width = mwidth*0.99;
              return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: width,
                  height: height,
                  child: Image.asset(
                    url[index],
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
        left: mwidth*0.45,
          bottom: 0.008,
          child: indicator(context, url.length, _activeindex))
    ]);
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
