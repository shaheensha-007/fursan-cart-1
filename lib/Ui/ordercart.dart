// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fursancart/Bloc/ordercartBloc/ordercart_bloc.dart';
//
// import '../Repository/modelclass/ordercartModel.dart';
//
// class Ordercart extends StatefulWidget {
//   const Ordercart({Key? key}) : super(key: key);
//
//   @override
//   State<Ordercart> createState() => _OrdercartState();
// }
// late List<OrdercartModel> Ordercart1;
// class _OrdercartState extends State<Ordercart> {
//   @override
//   void initState() {
//     BlocProvider.of<OrdercartBloc>(context).add(FetchOrdercartEvent());
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     var mheight = MediaQuery
//         .of(context)
//         .size
//         .height;
//     var mwidth = MediaQuery
//         .of(context)
//         .size
//         .width;
//     return BlocBuilder<OrdercartBloc, OrdercartState>(
//   builder: (context, state) {
//       if (state is OrdercartblocLoading) {
//         print("loding");
//       }
//       if (state is OrdercartblocError) {
//         print("error");
//       }
//       if (state is OrdercartblocLoaded) {
//         Ordercart1= BlocProvider.of<OrdercartBloc>(context).Ordercart1;
//         print("Loaded");
//
//          return Scaffold(backgroundColor: Colors.white,
//      body: SingleChildScrollView(
//        child: Column(
//         children: [
//           Container(
//             height: mheight*0.50,
//             width: mwidth*0.900,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(17),
//               child:CarouselSlider(
//                 items: [
//              Center(
//               child: Container(
//                 height: mheight*0.450,
//                 width: mwidth*0.450,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(image: AssetImage("assets/samsung-32-smart-tv-500x500-removebg-preview 3.png"))
//                 ),
//                 ),
//             ),
//          ],
//          options: CarouselOptions(
//            height: 600.0,
//            enlargeCenterPage: true,
//            autoPlay: true,
//            aspectRatio: 16 / 9,
//            autoPlayCurve: Curves.easeInCirc,
//            enableInfiniteScroll: true,
//            autoPlayAnimationDuration: Duration(milliseconds: 100),
//            viewportFraction: 0.9,
//          ),
//        ),
//      ),
//
//     ),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Row(
//               children: [
//                 Text("Television 32’’ Smart TV",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
//
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30),
//                   child: Text("₹ 50,000",style: TextStyle(fontWeight: FontWeight.w200) ,),
//                 ),
//
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 280),
//             child: IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: Colors.deepOrange,)),
//           ),
//
//           SizedBox(
//             height: mheight*0.02,
//           ),
//           Card(
//             child: Row(
//             children: [
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Column(
//                     children: [
//                       Text("1 - 10 sets",style: TextStyle(fontWeight: FontWeight.w200,fontSize:12),),
//                       Text("₹ 50,000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
//                     ],
//                   ),
//               ),
//               SizedBox(
//                 width: mwidth*0.05,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Column(
//                   children: [
//                     Text("1 - 10 sets",style: TextStyle(fontWeight: FontWeight.w200,fontSize:12),),
//                     Text("₹ 50,000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: mwidth*0.05,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Column(
//                   children: [
//                     Text("1 - 10 sets",style: TextStyle(fontWeight: FontWeight.w200,fontSize:12),),
//                     Text("₹ 50,000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
//                   ],
//                 ),
//               ),
//             ],
//             ),
//           ),
//
//           SizedBox(
//             height: mheight*0.050,
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(left:120 ),
//             child: Row(
//               children: [
//                 Container(
//                   height: mheight*0.04,
//                   width: mwidth*0.08,
//                   color: Color(0xffEEEEEE,
//                   ),
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text("-"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: mwidth*0.02,
//                 ),
//                 Container(
//                   height: mheight*0.04,
//                   width: mwidth*0.15,
//                   color: Color(0xffEEEEEE,
//                   ),
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text("1"),
//                   ),
//                 ),
//                 SizedBox(
//                   width: mwidth*0.02,
//                 ),
//                 Container(
//                   height: mheight*0.04,
//                   width: mwidth*0.08,
//                   color: Color(0xffEEEEEE,
//                   ),
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text("+"),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: mheight*0.03,
//           ),
//           Container(
//             height: mheight*0.06,
//             width: mwidth*0.700,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: Color(0xff264050),
//             ),
//             child:Center(child: TextButton(onPressed: (){},child: Text("ADD TO CART",style: TextStyle(fontSize: 15,color: Colors.white),)),
//           )
//           ),
//           Container(
//               height: mheight*0.09,
//               width: mwidth*0.700,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xffFFC113),
//               ),
//               child:Center(child: TextButton(onPressed: (){},child: Text("BUY NOW",style: TextStyle(fontSize: 20,color: Colors.white),)),
//               )
//           ),
//           SizedBox(
//             height: mheight*0.10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 230),
//             child: Text("Product Detail",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
//           ),
//           SizedBox(
//             height: mheight*0.02,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 100),
//             child: Text("Samsung TV\nLast Updated: 23rd February 2023Founded back in 1969 \nas Samsung Electric Industries,Suwon, South Korea-headquartered Samsung Electronics today makes everything from televisions to semiconductors.\n It released its first Android smartphone in 2009, and can be credited with the launch of the first Android tablet back in 2010. The company is among the biggest players in the smartphone market in the world. It has recently developed smartphones running Tizen OS, as an alternative to its Android-based smartphones."),
//           ),
//           SizedBox(
//             height: mheight*0.08,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right:230),
//             child: Column(
//               children: [
//                 Text("RATING & REVIEW",style: TextStyle(fontWeight: FontWeight.w400),),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 250),
//             child: IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: Colors.deepOrange,)
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 230),
//             child: Text("value of money",style: TextStyle(fontWeight: FontWeight.w300),),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 220),
//             child: Text("shaheen",style: TextStyle(fontWeight: FontWeight.w300,color: Color(0xffB8B8B8)),),
//           )
//         ],
//     ),
//      )
//         );
//   }return Container();
//     )
//
//   }
// }
