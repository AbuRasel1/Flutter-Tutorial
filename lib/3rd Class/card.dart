import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text('Card Shape'),
      ),//appbar

      body: Center(
        child: Card(
          elevation: 80,//card hawai vese thakbe
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          shadowColor: Color.fromRGBO(33, 191, 115, 1),//rgb code use koreci color er jonno
          color: Color.fromRGBO(33, 191, 115, 1),
          child: SizedBox(//box er size
            height: 200,//height
            width: 200,
            child: Center(//text  center a hobe
              child: Text('Card Shape'),
            ),

          ),
        ),
      ),


    );
  }

}