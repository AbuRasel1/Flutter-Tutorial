import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );

  }

}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Row Flexible"),
      ),//AppBar

      body: Row(
        children: [
          Flexible(
            flex: 10,
              child:Container(color: Colors.green,)),//Flexible
          Flexible(
              flex: 20,
              child:Container(color: Colors.red,)),//Flexible
          Flexible(
              flex: 30,
              child:Container(color: Colors.blue,)),//Flexible
          Flexible(
              flex: 40,
              child:Container(color: Colors.black,)),//Flexible

        ],
      ),
    );//Scaffold

  }

}