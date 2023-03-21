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
        title: Text("This is Flexable in Column"),
      ),//AppBar
      body: Column(
        children: [
          Flexible(
            flex: 10,
              fit: FlexFit.loose,//ata dile expanded er moto kaj korbe
              child: Container(color: Colors.green,),
          ),//Flexible
          Flexible(
            flex: 20,
              fit: FlexFit.tight,//ata dile expanded er moto kaj korbe
              child: Container(color: Colors.black,)),//Flexiable
          Flexible(
            flex: 30,
              fit: FlexFit.loose,//ata dile expanded er moto kaj korbe
              child: Container(color: Colors.blue,)),//Flexiable
          Flexible(
            flex: 40,
              fit: FlexFit.tight,
              child: Container(color: Colors.yellow,)),//Flexiable
        ],


      ),
    );

  }

}