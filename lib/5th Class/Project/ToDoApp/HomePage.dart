import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ToDoStyle.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ToDoAppUI();

  }
}

class ToDoAppUI extends State<HomePage>{
   List ToDoList=[];
   String item="";
   OnChange(content){

     setState(() {
       item=content;
     });

   }
   AddValue(){
     setState(() {

       ToDoList.add({"item":item});
     });
   }

   RemoveItem(index){
     setState(() {
       ToDoList.removeAt(index);
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a To Do App"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [


            Expanded(
                flex: 10,//akhane screen er 10% jaiga nibe
                child:Row(
                  children: [
                    Expanded(flex:80, child:TextFormField(onChanged: (content){OnChange(content);} ,decoration: ToDoInputDecoration("List Item"),),),
                    Padding(padding: EdgeInsets.all(5)),
                    Expanded(flex: 20,child: ElevatedButton(onPressed: (){AddValue();}, child: Text("ADD") ,style: InputButtonStyle(),))
                  ],
                )//row
            ),//expanded





            Expanded(
              flex: 90,//akhane screen er 90% jaiga nibe
                child: ListView.builder(
                    itemCount: ToDoList.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: Row(
                          children: [
                            Expanded(flex:80, child: Text(ToDoList[index]["item"].toString())),
                            Expanded(flex:10,child: TextButton(onPressed: (){RemoveItem(index);}, child:Icon(Icons.delete)))
                          ],

                        ),
                      );//card
                    }
                ),//ListView .builder
            )//Expanded
          ]//children


        ),//column
      ),//container
    );//scaffold
  }

}



