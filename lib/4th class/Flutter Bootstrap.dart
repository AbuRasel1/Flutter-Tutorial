//Flutter Bootstrap kaj kore Responsive grid er moto kaj
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Bootrap Responsive"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BootstrapContainer(
          fluid: false,
          children: [
            BootstrapRow(
              height: 100,
                children: [


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col

                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col



                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col


                  BootstrapCol(

                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,height: 100,color: Colors.green,),
                  ),//bootstrap col






                ]//children
            )//bootstrap row
          ],//children
        ),//bootstrap container
      ),//single child scroll view

    );//scaffold

  }

}