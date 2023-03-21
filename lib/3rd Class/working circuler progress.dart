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
        title: Text('Circle loading progress'),
      ),//appbar
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.green,
          strokeWidth: 10,//circle er border width
          backgroundColor: Colors.red,
        ),
      ),
    );

  }

}