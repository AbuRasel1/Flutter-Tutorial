import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(),
    debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
    );

  }

}


class HomeActivity extends StatelessWidget{

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  //button style
  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 60)
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Part'),
      ),//appbar

      //body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Padding(padding:EdgeInsets.all(10) ,child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),label: Text(" Enter First Name")),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration:InputDecoration(border: OutlineInputBorder(),label: Text('Enter your Last name')),),),
          Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Enter your Email')),),),
          Padding(padding: EdgeInsets.all(10),child: ElevatedButton(child: Text("Submit"),onPressed: (){MySnackBar('Submit succesfull',context);},style: buttonStyle,),)



        ],
      ),

    );//scaffold

  }

}