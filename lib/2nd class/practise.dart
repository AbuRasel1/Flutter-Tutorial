import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeActivity(),

    );

  }

}

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Row container',style: TextStyle(color: Colors.white),),
        titleSpacing: 100,
        backgroundColor: Colors.black,


      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network("https://avatars.githubusercontent.com/u/33941621?v=4"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network("https://avatars.githubusercontent.com/u/33941621?v=4"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network("https://avatars.githubusercontent.com/u/33941621?v=4"),
          ),
        ],
      ),

    );



  }

}