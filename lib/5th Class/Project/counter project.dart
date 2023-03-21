import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage1(),
      title: "Counter App",
    );

  }

}

class HomePage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageUI();

  }

}
class  HomePageUI extends State<HomePage1>{
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Counter App"),
      ),
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            count+=1;

          });


        },
      ),
    );

  }

}