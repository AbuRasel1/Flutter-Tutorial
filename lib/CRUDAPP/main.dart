import 'package:app1/CRUDAPP/Screen/productcreatescreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(crudApp());
}

class crudApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: productCreateScreen(),
      title: "Crud App",
    );
  }

}