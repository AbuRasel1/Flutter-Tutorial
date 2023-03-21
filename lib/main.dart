import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),//akhane primary color green hobe
       darkTheme: ThemeData(primarySwatch: Colors.blue),//dark mode on korle blue color hobe
        color:Colors.amber,//primary color hobe amber
        debugShowCheckedModeBanner: false,//debug mode ay lekha ar thakbe na
        home:HomeActivity()

    );

  }


}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  //snake bar massage
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: Text('Inventory'),//title a ki lakha thakbe tai
        titleSpacing: 0,//title a space thakbe koto tuku
        centerTitle: true,//title er lekha center a jabe
        toolbarHeight: 60,//toolbar er height
        toolbarOpacity: 1,//title er text clear dekha jabe
        elevation: 0,
        backgroundColor: Colors.blueAccent,//toobar er background color


        //action
        actions: [
          //akhane je message dibo oita oi icon a click korle show korbe niche
          IconButton(onPressed:(){MySnackBar('Iam comments', context);} , icon:Icon(Icons.comment) ),
          IconButton(onPressed: () {MySnackBar('Iam Search', context);} , icon: Icon(Icons.search)),
          IconButton(onPressed: () {MySnackBar('Iam Settings', context);} , icon: Icon(Icons.settings)),
          IconButton(onPressed: () {MySnackBar('Iam Email', context);} , icon: Icon(Icons.email)),

        ],



      ),
      //floating action button: app bar er niche hobe
      floatingActionButton:FloatingActionButton(
        elevation: 20,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        //button a click korle ay message show korbe
        onPressed: (){
          MySnackBar('Iam floating action message', context);
        },


      ),






    );



  }
  
}