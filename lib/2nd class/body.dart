import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),


      home: HomeActivity(),
    );

  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
         title: Text('Body of the APP')

     ),

     body: Container(
       height: 300,//height hobe 400
       width: 200,//width hobe 300
       alignment: Alignment.topCenter,
       margin: EdgeInsets.fromLTRB(10, 20, 10,20),
       padding: EdgeInsets.all(50),

       decoration: BoxDecoration(
         border: Border.all(color: Colors.red,width: 6),
         color: Colors.blue,
       ),


      child:(Image.network("https://avatars.githubusercontent.com/u/33941621?v=4")),
           
       )
       




     );


  }

}