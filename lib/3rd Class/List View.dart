import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const app());
}
class app extends StatelessWidget{
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class HomeActivity extends StatelessWidget{

  //snackbar massage
  MySnackBar(msg,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  //list json array
  var MyList=[
    {'img':'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg','title':'Rasel'},
    {'img':'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg','title':'Hanif'},
    {'img':'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg','title':'Alamin'},
    {'img':'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg','title':'Ebrahim'},
    {'img':'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg','title':'Naim'},
    {'img':'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg','title':'Partho'},
    {'img':'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg','title':'Mithun'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view'),
      ),//appbar

      body: ListView.builder(
        itemCount: MyList.length,//akhane mylist length joto hobe toto bar loop vabecholbe
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){MySnackBar(MyList[index]['title'],context);},//akbar tab korle snackbar massage dibe
            child: Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,//full screen width hobe
              child: Image.network(MyList[index]["img"]!,fit:BoxFit.fill,),//image show korbe
            ),
          );
        }
      ),


    );//scaffold
  }

}