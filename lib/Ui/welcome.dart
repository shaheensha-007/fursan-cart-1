import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursancart/Bloc/wlcome_block/welcome_bloc.dart';
import 'package:fursancart/Ui/home.dart';

import 'letstart.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);


  @override
  State<Welcome> createState() => _WelcomeState();

}

final form_key = GlobalKey<FormState>();
String Welcome_email1 = '';
String pattern =
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?)*$";

class _WelcomeState extends State<Welcome> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RegExp regex = RegExp(pattern);
    BlocListener<WelcomeBloc, WelcomeState>(
      listener: (context, state) {
        if (state is welcomeblocLoaded) {
          print('loaded');
          Navigator.of(context).push(
              MaterialPageRoute(builder: (a) =>  Home()));
        }
        if (state is welcomeblocLoading) {
          print('loding');
          showDialog(context: context,
              builder: (BuildContext a) =>
                  AlertDialog(
                    content: Container(
                      width: 30,
                      height: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 20,
                          ),
                          Text("please wait", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    title: Center(child: Text("loading"),),
                  ));
        }
        if (state is welcomeblocError) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Already registered")));
        }
      },
    );
    MediaQuery
        .of(context)
        .size
        .height;
    MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Form(
          child: Container(
          height: MediaQuery.of(context).size.height,
    width:MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/Login.jpg"),
    fit: BoxFit.cover,
    )
    ),
    child: Form(key: form_key ,
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [

    SizedBox(
    height: 300,
    ),
    Container(
    child: TextFormField(controller: email,
    validator:(value) {
      if (value == null||
      !regex.hasMatch(value)) {
      return 'Invalid email';
      }
    },
      onSaved: (value) {
          Welcome_email1  = value!;
      },



    decoration: InputDecoration(
    focusedBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    icon: Icon(
    Icons.account_circle_outlined,color: Color(0xff767676),
    ),
    hintText: 'email',
    hintStyle: TextStyle(fontSize: 14),),
    ),
    width: 350,height: 50,
    decoration: BoxDecoration(
    border: Border.all(color: Color(0xffF1F1F1), width: 2),
    color: Color(0xffF1F1F1) ,
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    SizedBox(
    height:50,
    ),
    Container(width: 350,height: 50,
    child: TextFormField(controller: password,
      validator:(value) {
          if (value == null||
             value.length<3) {
            return 'the character at least 3';
          }
      },
      onSaved: (value) {
          Welcome_email1  = value!;
      },
    decoration: InputDecoration(
    focusedBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    icon: Icon(
    Icons.lock_open,color: Color(0xff767676),
    ),
    hintText: 'Password',
    hintStyle: TextStyle(fontSize: 14),),
    ),
    decoration: BoxDecoration(
    border: Border.all(color: Color(0xffF1F1F1), width: 2),
    color: Color(0xffF1F1F1) ,
    borderRadius: BorderRadius.circular(8),
    ),

    ),
    SizedBox(
    height: 40,
    ),
    GestureDetector(onTap: (){  final isvalid = form_key.currentState?.validate();
    if (isvalid == true) {
    form_key.currentState?.save(); BlocProvider.of<WelcomeBloc>(context).add(FetchWelcomeEvent(email: email.text, password: password.text));}},
    child: Container(
    width:350,
    height: 60,
    decoration: BoxDecoration(
    color: Color(0xffFFC113),
    borderRadius: BorderRadius.circular(15),
    ),
    child:Center(
    child: Text("LOG IN",
    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),
    ),
    ),
    ),


    ),
    SizedBox(
    height: 25,
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    Padding(
    padding: const EdgeInsets.only(left:230),
    child: TextButton(onPressed: (){}, child: Text("Forgot Password?",selectionColor: Colors.cyan,)),
    ),
    ],
    ),
    SizedBox(
    height: 30,
    ),
    Container(width: 100,
    child: Row(
    children: [
    Container(
    height: 40,
    width: 50,
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("assets/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png"),fit: BoxFit.contain),shape: BoxShape.circle),
    ),
    Container(
    height: 40,
    width: 50,
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage("assets/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png"),fit: BoxFit.contain),shape: BoxShape.circle),
    ),
    ],
    ),
    ),
    Row(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 90),
    child: Text("Dont have an account?"),
    ), TextButton( child:Text("Sign in",style: TextStyle(color:Colors.black,fontSize:15,fontWeight:FontWeight.bold ),),onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext a)=>Letstart()));}
    ),
    ],
    ),

    ],
    ),
    ),
    ),
        ),

    );

    }
  }
