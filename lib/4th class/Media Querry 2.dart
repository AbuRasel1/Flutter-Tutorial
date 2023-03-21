import 'package:app1/4th%20class/Media%20query%202%20style.dart';
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
    );

  }

}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query use kore width onujaiye font color and font size change"),
      ),
      body: Center(
        child: Text("Media Query use kore Text alada device a alada color and alada size",style:Headline(context) ,),
      ),
    );

  }

}