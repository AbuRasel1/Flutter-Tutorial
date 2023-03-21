import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyAPP());

}

class MyAPP extends StatelessWidget{
  const MyAPP({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.green),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home:HomeActivity()
    );

  }
  
}

class HomeActivity extends StatelessWidget{

  Mysnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text('App Bar')
        ),
            //bottom navigation bar mane niche je icon gula thake
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home) ,label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message) ,label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.person) ,label: 'profile'),
          ],
          onTap: (int index){
            if(index==0){
              Mysnackbar('bottom navigation bar Home',context);
            }
            if(index==1){
              Mysnackbar('bottom navigation bar Message',context);
            }
            if(index==2){
              Mysnackbar('bottom navigation bar Person',context);
            }
          },

        ),

    );

  }
  
}