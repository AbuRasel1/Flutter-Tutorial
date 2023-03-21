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
      debugShowCheckedModeBanner: false,
    );

  }

}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    var orientation=MediaQuery.of(context).orientation;

  return Scaffold(

    appBar: AppBar(
      title: Text("This is a Media Query "),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Height of the Screen :${height}"),
        Text("Width of the Screen :${width}"),
        Text("Orientation of the Screen :${orientation}")
      ],//children
    ),//column

  );//scaffold
  }

}