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
        title: Text('Aspect Ratio'),
      ),
      body: Container(
        width: double.infinity,

        height: 300,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
            aspectRatio: 16/9,//aspect ratio add koreci jno sob display te 16/9 screen dekhai
            child: Container(
              color: Colors.green,

            ),
        ),
      ),
    );

  }

}