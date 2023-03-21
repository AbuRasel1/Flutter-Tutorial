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
        title: Text("This is a Column Expended and Flex"),
      ),//AppBar
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,//akhane screen 3 double hobe nicher tar  chaite
              child: Container(color: Colors.green,)
          ),//Expanded
          Expanded(
              flex: 2,//akhane screen 2 double hobe nicher tar chaite
              child: Container(color: Colors.red,)
          ),//Expanded
          Expanded(
              flex: 1,//akhane screen hobe onno gular chaite  choto hobe
              child: Container(color: Colors.black,)
          )//Expanded


        ],
      ) ,//Column
    );//Scaffold
  }


}