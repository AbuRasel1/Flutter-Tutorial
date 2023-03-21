import 'package:app1/practise2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      title: ("Sum App"),
    );

  }

}
class HomeActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageUI();


  }
}
class HomePageUI extends State<HomeActivity>{

  Map<String,double>InputValue={"num1":0,"num2":0,"num3":0};
  double sum=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Sum App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("Sum Value"),
            SizedBox(height: 20,),

            TextFormField(decoration:InputStyle("Please Enter First Number"),),
            SizedBox(height: 20,),
            TextFormField(decoration:InputStyle("Please Enter Second Number"),),
            SizedBox(height: 20,),
            TextFormField(decoration:InputStyle("Please Enter Third Number"),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child:Text('Submit'),style: submitButtonStyle(),)

          ],
        ),
      ),
    );

  }

}
