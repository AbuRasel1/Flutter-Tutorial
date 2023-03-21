import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );

  }

}
class HomeActivity extends StatelessWidget{
  
  
  //snack bar massage
  MySnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content:Text(message))
   );
  }
  
  //alert dialog create kora hoice niche
  MyAletDialog(context){
    return showDialog(context: context,

        builder: (BuildContext context){
            return Expanded(
                child: AlertDialog(
                  title: Text('Alert !'),
                  content: Text('Do you want to delete'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();//yes a click korle remove hobe and snackbar msg dibe
                      MySnackBar('Delete Successfull',context);

                    }, child: Text('Yes')),
                    
                    
                    
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();//no button a click korle alert dialog remove hobe
                      }, child: Text('No'))//
                  ],

                )//alertdialog
            );//expanded
      

        }
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Alert Dialog Part'),
      ),//appbar

      body: Center(
        child: ElevatedButton(child: Text('Alert Dialog'), onPressed: (){MyAletDialog(context);},) ,
      ),

    );//scaffold

  }

}