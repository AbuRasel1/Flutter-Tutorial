import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Body container'),
        ),//appbar

      body: Container(//container create hobe
        child:Text('body part text',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),),

        height: 300,//container height 300
        width: 300,//container width 300
        margin: EdgeInsets.all(50),//container margin hobe sob dike 50
        padding: EdgeInsets.fromLTRB(50, 20, 20, 20),//padding hobe text er


        decoration: BoxDecoration(
          color: Colors.black,//container background color
          border: Border.all(width: 5,color: Colors.green),//border container
          borderRadius: BorderRadius.circular(10),//border radious
        ),


      ),//container

    );//scaffold



  }

}