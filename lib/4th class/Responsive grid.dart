import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';


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
        title: Text("Responsive Grid"),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
                lg: 12,
                child: Container(
                  height: 100,
                  color: Colors.orange,
                  alignment: Alignment.center,
                  child: Text("Large device 12",),
                )
            ),//Responsive col
            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,

                child: Container(
                  height: 100,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),
                )
            ),//Responsive col
            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,
                child: Container(
                  height: 100,
                  color: Colors.orange,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),
                )
            ),//Responsive col
            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,
                child: Container(
                  height: 100,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),
                )
            ),//Responsive col
            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,
                child: Container(
                  height: 100,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),
                )
            ),//Responsive col
            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),
                )
            ),//Responsive col
            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,
                child: Container(
                  height: 100,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),
                )
            ),//Responsive col
            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,
                child: Container(
                  height: 100,
                  color: Colors.brown,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),
                )
            ),//Responsive col

            ResponsiveGridCol(
                lg: 2,
                md: 4,
                sm: 3,
                xs: 6,
                child: Container(
                  height: 100,
                  color: Colors.indigo,
                  alignment: Alignment.center,
                  child: Text("Large device 2 \n Medium device 4 \n Small device 3 \n Extra small 6",),



                )
            ),//Responsive col






          ],//children
        ),//responsive row
      )
    );

  }

}