import 'package:app1/CRUDAPP/Crud%20Practise/screen/createProduct.dart';
import 'package:app1/CRUDAPP/Crud%20Practise/screen/listviewPractise.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: listview1(),

      title: "CrudApp",
      debugShowCheckedModeBanner: false,
    );

  }

}

/*

 */