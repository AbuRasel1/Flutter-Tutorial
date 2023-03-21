import 'package:app1/3rd%20Class/navigation.dart';
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
    );
  }

}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Row Expanded"),
      ),//AppBar
      body: Row(
        children: [
          Expanded(
            flex: 1,
              child:Container(

                color: Colors.green,)
          ),//Expanded
          Expanded(
            flex: 2,

              child:Container(color: Colors.black,) ),//Expanded

          Expanded(
            flex: 3,

              child:Container(color: Colors.red,) ),//Expanded
          Expanded(
            flex: 4,

              child:Container(color: Colors.green,) ),//Expanded

        ],//children
      ),//Row
    );//Scaffold


  }

}