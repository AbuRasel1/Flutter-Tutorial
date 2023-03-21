import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());

}

class App extends StatelessWidget{
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
        title: Text('Navigation Butoon'),

      ),//appbar

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Action1('This is Home to  action1 page')));},
              //ay constructor er moddhe parameter pass koreci
              child: Text('Action1 page')),//ay button a click korle acation1 page a jabe


          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Action2('This is Home to  action2 page')));},
              //ay constructor er moddhe parameter pass koreci
              child: Text('Acation2 page')),//ay button a click korle action2 page jabe
        ],
      ),
    );//scaffold
  }

}

class Action1 extends StatelessWidget{
  String msg;
   Action1(
      this.msg,

      {super.key}

      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Action2('This is Acation 1 page to  action2 page')));

          },
              child: Text('Action2 page')//ay button a click korle action2 page ajabe
          )



        ],
      ),
    );

  }

}

class Action2 extends StatelessWidget{
  String msg;
  Action2(
      this.msg,

      {super.key}

      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
        child: (
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Action1('This is Acation 2 page to  action1 page')));
          },
            child: Text('Action1 page'),//ay button a click korle action1 page ajabe
          )
        ),
      ),
    );

  }

}