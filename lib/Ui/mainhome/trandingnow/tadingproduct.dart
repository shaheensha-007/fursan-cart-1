import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Ui/mainhome/home.dart';

import '../../../Bloc/choosebrand/choosebrand_bloc.dart';
import '../../../Bloc/tradingproduct_block/tradingproduct_bloc.dart';
import '../../../Repository/modelclass/choosebrandModelclass.dart';

class Tradingproduct extends StatefulWidget {
  const Tradingproduct({Key? key}) : super(key: key);

  @override
  State<Tradingproduct> createState() => _TradingproductState();
}

class _TradingproductState extends State<Tradingproduct> {
  late List<ChoosebrandModelclass>tradingproduct ;
  @override
  void initState() {
    BlocProvider.of<TradingproductBloc>(context).add(FetchTradingproduct());
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
    tradingproduct = BlocProvider
        .of<TradingproductBloc>(context)
        .choosebrandModelclass;
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading:

        IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));}, icon: Icon(Icons.arrow_back,color: Colors.black,)),

        title:Text("Trading now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black,),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
        ],
      ),
      body: BlocBuilder<TradingproductBloc, TradingproductState>(
  builder: (context, state) {
      if (state is Tradingproductblocloding) {
        print("loding");
      }
      if (state is TradingproductbloError) {
        print("error");
      }
      if (state is Tradingproductblocloaded) {
        tradingproduct=BlocProvider.of<TradingproductBloc>(context).choosebrandModelclass;
        print(tradingproduct!.length.toString());
        print("Loaded");

        return ListView.builder(itemCount: tradingproduct!.length,
            itemBuilder: (BuildContext context, int index) {
              Container(
                height: mheight * 0.15,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Container(
                        height: mheight * 0.10,
                        width: mwidth * 0.30,
                        child: Image.asset("assets/TV-PNG-HD-Quality 1.png"),
                      ),
                    ),
                    SizedBox(
                      width: mwidth * 0.02,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text("Television 32’’ Smart TV",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),),
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.star_border)),
                          Text("₹ 50,000")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: mwidth * 0.02,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {}, icon: Icon(Icons.favorite_border),
                          ), SizedBox(
                            height: mheight * 0.06,
                            width: mwidth * 0.20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
        );
      }else
        return Container();},
),
    );
  }
}
