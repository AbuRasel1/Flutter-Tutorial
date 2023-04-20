import 'package:app1/CRUDAPP/Screen/productcreatescreen.dart';
import 'package:app1/CRUDAPP/Screen/productupdatescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ResetApi/RestClient.dart';
import '../Style/style.dart';

class productgridViewScreen extends StatefulWidget {
  const productgridViewScreen({Key? key}) : super(key: key);

  @override
  State<productgridViewScreen> createState() => _productgridViewScreenState();
}

class _productgridViewScreenState extends State<productgridViewScreen> {
  var productList=[];
  bool loading=true;


  callData()async{
    loading =true;//loading true hole circuler progress indicator dekhabe
    var data=await productGridView();

    setState((){
      productList=data;
      loading=false;//loading true hole data gula dekhabe dekhabe
    });


  }
  @override
  void initState() {
    super.initState();
    callData();//data ay function call kora hoice

  }

  //Item delete korar function
  deleteItem(id)async{
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
           title: Text("Delete !"),
            content: Text("Once delete ! You cannot Get It Back"),
            actions: [
              OutlinedButton(onPressed: (){
                Navigator.pop(context);
                loading=true;
                productDeleteRequest(id);
                callData();  

              },
                  child:Text("YES")),


              OutlinedButton(onPressed: (){Navigator.pop(context);}, child:Text("NO"))
            ],

          );
        });

  }

  //product update page a jabe update button a click korle
  goToUpdatePage(context,productItem){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=>productupdatescreen(productItem)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: Stack(
          children: [
            screenBackground(context),
            loading?(Center(child: CircularProgressIndicator(),)):
                //RefreshIndicator use korle user opor dik theke tan dile page ta refresh hobe
                RefreshIndicator(
                  onRefresh: () async {
                    await callData();

                  },
                    child:            (
                        GridView.builder(
                            gridDelegate: productGridViewStyle(),
                            itemCount: productList.length,

                            itemBuilder: (context,index){
                              return Card(
                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(child: Image.network(productList[index]['Img'],fit: BoxFit.fill,)),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5,5,5,8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Product Name : "+productList[index]['ProductName']),
                                          SizedBox(height: 7,),
                                          Text("Price : "+productList[index]['UnitPrice']+" BDT"),
                                          SizedBox(height: 3,),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,

                                            children: [
                                              //update button
                                              OutlinedButton(onPressed: (){
                                                goToUpdatePage(context,productList[index]);
                                              }, child: Icon((CupertinoIcons.ellipsis_vertical_circle),size: 20,color:Colors.greenAccent,)),
                                              SizedBox(width: 3,),
                                              //delete button
                                              OutlinedButton(onPressed: (){
                                                deleteItem(productList[index]['_id']);
                                              }, child:Icon(Icons.delete,size: 20,color:Colors.redAccent),)
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            })

                    ) ,
                )

          ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (builder)=>productCreateScreen()));},
        child: Icon(Icons.add),
      ),

    );
  }
}
