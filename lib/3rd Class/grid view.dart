
//grid view list mane koita column a list gula thakbe space koto tuku thakbe
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
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );

  }

}

class  HomeActivity extends StatelessWidget{
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
        title: Text('Grid view List'),
      ),//appbar
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          crossAxisSpacing: 10,
          childAspectRatio: 2

          ),
        itemCount: MyList.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){MySnackBar(MyList[index]['title'], context);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 250,
              child:Image.network (MyList[index]['img']!,fit: BoxFit.fill,),
            ),
          );
        }

      ),//list view
    );//scaffold

  }

}