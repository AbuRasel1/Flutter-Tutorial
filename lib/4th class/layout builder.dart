import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      theme:ThemeData (primarySwatch: Colors.green),
    );
  }

}

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout builder mane different  screen er jonno different output'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth>600){
            return Container(height: 400,width: 400,color: Colors.red,);


          }
          else{
            return Container(height: 200,width: 200,color: Colors.blue,);
          }

        },
      ),
    );
  }

}