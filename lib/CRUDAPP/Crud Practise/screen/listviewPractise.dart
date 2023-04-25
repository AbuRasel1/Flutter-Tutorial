import 'package:app1/CRUDAPP/Crud%20Practise/screen/createProduct.dart';
import 'package:app1/CRUDAPP/Crud%20Practise/screen/update.dart';
import 'package:app1/CRUDAPP/Crud%20Practise/style1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../api call.dart';

class listview1 extends StatefulWidget {
  const listview1({Key? key}) : super(key: key);

  @override
  State<listview1> createState() => _listview1State();
}

class _listview1State extends State<listview1> {

  List productList=[];
  var loading=false;

  callData1() async {
    loading=true;
    var data=await productListView1();
    setState(() {
      productList=data;
      loading=false;


    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callData1();
  }


  //delete item
  deleteItem1(id){
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Delete Item !'),
          content: Text('Once Delete You cannot get It back '),
          actions: <Widget>[
            OutlinedButton(onPressed: (){

              Navigator.pop(context);
              deleteList(id);
              loading =true;
              callData1();
            }, child:Text("Yes")),
            OutlinedButton(onPressed: (){Navigator.pop(context);}, child:Text("No"))
          ],
        );
      },
    );
  }
  goToUpatePage(context,productList){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=>update(productList)));

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Stack(
        children: [
          screenBackground1(context),
          loading?(Center(child: CircularProgressIndicator(),)):(
          RefreshIndicator(
            onRefresh: () async {
              await callData1();
            },
            child:
            GridView.builder(
                gridDelegate: gridview1(),
                itemCount: productList.length,

                itemBuilder: (context,index){
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Image.network(productList[index]['Img'])),


                        Container(
                          padding: EdgeInsets.fromLTRB(5, 3, 5, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Product Name : "+productList[index]['ProductName']),
                              SizedBox(height: 5,),
                              Text("Price : "+productList[index]['UnitPrice']+"BDT"),
                              SizedBox(height: 5,),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OutlinedButton(onPressed: (){
                                      goToUpatePage(context,productList[index]);

                                    }, child:Icon( (CupertinoIcons.ellipsis_vertical_circle),color: Colors.green, )),
                                    SizedBox(width: 3,),

                                    OutlinedButton(onPressed: (){
                                      deleteItem1(productList[index]['_id']);


                                    }, child:Icon(Icons.delete,color: Colors.green,)),



                                  ]
                              )

                            ],
                          ),

                        )


                      ],
                    ),
                  );
                }
            ),
          )



          )



        ],

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>createProduct()));
        },
      ),


    );
  }
}
