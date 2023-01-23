import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  @override
  Widget build(BuildContext context) {
    var mwidth= MediaQuery.of(context).size.width;
    var mheight=MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: CarouselSlider.builder(
          itemCount:3,
          itemBuilder:(context, index, realindex) {
            var height =mheight*0.200;
            var width= mwidth*0.85;
            return Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(17),
    ),
            );
          }, options: CarouselOptions(),
    )
    )
    ]
    );
            
  }
  
}
