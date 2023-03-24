import 'package:app1/CRUDAPP/Style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CrudApp extends StatefulWidget {
  const CrudApp({Key? key}) : super(key: key);

  @override
  State<CrudApp> createState() => HomePageUI();
}

class HomePageUI extends State<CrudApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Croud App"),
      ),
      body: Stack(
        //background image
        children: [
          BackgrounImage(context),//background image

          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(onChanged: (value){},decoration: AppInputDecoration("Product Name"),),
                TextFormField(onChanged: (value){ },decoration: AppInputDecoration("Product Code"),),
                TextFormField(onChanged: (value){},decoration: AppInputDecoration("Product Image Url"),),
                TextFormField(onChanged: (value){},decoration: AppInputDecoration("Unit Price"),),
                TextFormField(onChanged: (value){},decoration: AppInputDecoration("Total Price"),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

