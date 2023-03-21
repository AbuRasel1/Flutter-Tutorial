import 'package:app1/2nd%20class/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

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
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),

    );

  }
  //elevated button style korar jonno
  final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    backgroundColor: Colors.amber,
    disabledBackgroundColor: Colors.red,


  );
  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.black,//elevated button er background color black
        foregroundColor: Colors.white,//Text color hobe white
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      )


    );

    return Scaffold(
      appBar: AppBar(
        title: Text(' Button part'),
      ),//app bar
      body: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:[

          TextButton(onPressed:() {MySnackBar('Iam Text Button',context);}, child: Text('Text Button')),
          ElevatedButton(onPressed:() {MySnackBar('Iam Elevated Button',context);}, child: Text('Text Button'),style: buttonStyle, ),
          OutlinedButton(onPressed:() {MySnackBar('Iam Outline Button',context);}, child: Text('Text Button')),
        ],
      ),//row



    );

  }

}