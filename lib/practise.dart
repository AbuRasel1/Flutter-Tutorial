import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: activity(),
      title: ("Counter App"),
      debugShowCheckedModeBanner: false,
    );
  }

}
class activity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageUI();

  }

}
class HomePageUI extends State<activity>{

  var index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a  Counter APP"),
      ),
      body: Center(
        child: Text(index.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            index+=1;

          });
        },
      ),
    );
  }

}