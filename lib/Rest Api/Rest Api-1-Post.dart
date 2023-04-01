/*akhane api theke data Post kora hoice .
Post mane data api a set kora .
mane data api a dewa jai

 */

import 'dart:convert';

import 'package:app1/3rd%20Class/navigation.dart';
import 'package:app1/practise.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestApiPost(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RestApiPost extends StatefulWidget {
  const RestApiPost({Key? key}) : super(key: key);

  @override
  State<RestApiPost> createState() => _RestApiPostState();
}

class _RestApiPostState extends State<RestApiPost> {


  PojoClass?productListGet;
//Api theke data get korar function
  Future<void> RestApiCallGet()async{
    Uri url=Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
    http.Response response_get_api=await http.get(url);
    if(response_get_api.statusCode==200){
      productListGet=PojoClass.fromJson (jsonDecode(response_get_api.body));
      setState(() {

      });

    }

  }



  @override
  void initState() {
    super.initState();
    RestApiCallGet();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Api Post "),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>addNewItem()));

        },
        child: Icon(Icons.add),
      ),

      body: ListView.builder(


          itemCount: productListGet?.data?.length??0,

          itemBuilder: (context,index){
            return ListTile(
              //value gula page a show korbe
              title: Text(productListGet?.data?[index].productName??'UnKnown'),
              subtitle: Text(productListGet?.data?[index].productCode??'UnKnown'),
              trailing: Text(productListGet?.data?[index].unitPrice??'UnKnown'),
            );
          }),
    );
  }
}

//Pojo class
class RestApiPojoClass_1 {
  String? status;
  List<Product>? ListOfProducts;

  RestApiPojoClass_1({this.status, this.ListOfProducts});

  RestApiPojoClass_1.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      ListOfProducts = <Product>[];
      json['data'].forEach((v) {
        ListOfProducts!.add(new Product.fromJson(v));
      });
    }
  }

}

class Product {
  String? sId;
  String? productName;
  String? productCode;
  String? img;
  String? unitPrice;
  String? qty;
  String? totalPrice;
  String? createdDate;

  Product(
      {this.sId,
        this.productName,
        this.productCode,
        this.img,
        this.unitPrice,
        this.qty,
        this.totalPrice,
        this.createdDate});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productName = json['ProductName'];
    productCode = json['ProductCode'];
    img = json['Img'];
    unitPrice = json['UnitPrice'];
    qty = json['Qty'];
    totalPrice = json['TotalPrice'];
    createdDate = json['CreatedDate'];
  }

}

//new akta page toiri kora hoice form feild er jonno


class addNewItem extends StatefulWidget {
  const addNewItem({Key? key}) : super(key: key);

  @override
  State<addNewItem> createState() => _addNewItemState();
}



class _addNewItemState extends State<addNewItem> {

  //form use korar jonno unit identifier use korlam
  GlobalKey<FormState> _form=GlobalKey();

  //Alert Dialog
  MyAlertDialog(context,msg){
    return showDialog(context: context,
        builder: (BuildContext context){
            return Expanded(
              child: AlertDialog(
                title: Text('Alert'),
                content: Text(msg),
                actions: [
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Ok"))
                ],
              ),


            );
        });
  }



  //Rest Api a value post kora hoice ay function a
   void addProductRestApi(String productName,String productCode,
      String productUnitPrice,String productImage,String productQuantity,String productTotalPrice)async{

     Uri url =Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
     http.Response response=await http.post(url ,
         headers:{
            'Content-Type':'application/json',
           'Accept':'application/json'
         },
         body: jsonEncode (
             {
               "Img":productImage,
               "ProductCode":productCode,
               "ProductName":productName,
               "Qty":productQuantity,
               "TotalPrice":productTotalPrice,
               "UnitPrice":productUnitPrice,
             }


        )
     );
     if(response.statusCode==200){
       //data add successfull hole ay message show korbe
       MyAlertDialog(context,"Product Add Successfull");
       //Data add howar por sob input feild gula clear hoye jabe
       productTotalPriceControl.text='';
       productImageControl.text='';
       productCodeControl.text='';
       productNameControl.text='';
       productQuantityControl.text='';
       productUnitPriceControl.text='';



     }
     else{
       //data add successfull hole ay message show korbe
       MyAlertDialog(context,"Sorry Product Add Not Successfull");
       //Data add na  howar por o sob input feild gula clear hoye jabe
       productTotalPriceControl.text='';
       productImageControl.text='';
       productCodeControl.text='';
       productNameControl.text='';
       productQuantityControl.text='';
       productUnitPriceControl.text='';
     }
     

  }

  //input feild text control kora jai
      TextEditingController productNameControl=TextEditingController();
      TextEditingController productCodeControl=TextEditingController();
      TextEditingController productUnitPriceControl=TextEditingController();
      TextEditingController productImageControl=TextEditingController();
      TextEditingController productQuantityControl=TextEditingController();
      TextEditingController productTotalPriceControl=TextEditingController();

  //button style
  ButtonStyle submitButtonStyle(){
    return ElevatedButton.styleFrom(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      backgroundColor: Colors.greenAccent,
      minimumSize: Size(double.infinity, 40)


    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new value add korar form"),
        centerTitle: true,

      ),


//sob code form er vitor niyeci
      body:Form(
        key: _form,//input feild er validate check korar jonno ata dite hoi

        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(height: 30,),
                TextFormField(
                  //validator use korci jeno form er value na diye submit kora na jai
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      //kono value na diye jodi submit kori tahole ay message show korbe
                      return("Please Enter Product Name");

                    }
                    return null;//value null thakle null return korbe

                  },


                  controller: productNameControl,//ay feild er value control korbe

                  decoration: InputDecoration(
                    labelText: ("Enter ProductName"),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    fillColor: Colors.greenAccent,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 30,),


                TextFormField(
                  //validator use korci jeno form er value na diye submit kora na jai
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      //kono value na diye jodi submit kori tahole ay message show korbe
                      return("Please Enter Product Code");

                    }
                    return null;//value null thakle null return korbe

                  },



                  controller: productCodeControl,//ay feild er value control korbe

                  decoration: InputDecoration(
                    labelText: ("Enter ProductCode"),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    fillColor: Colors.greenAccent,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 30,),

                TextFormField(

                  //validator use korci jeno form er value na diye submit kora na jai
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      //kono value na diye jodi submit kori tahole ay message show korbe
                      return("Please Enter Product Unit Price");

                    }
                    return null;//value null thakle null return korbe

                  },



                  controller: productUnitPriceControl,//ay feild er value control korbe
                  keyboardType: TextInputType.number,//akhne only number dewa jabe text na

                  decoration: InputDecoration(
                    labelText: ("Enter UnitPrice"),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    fillColor: Colors.greenAccent,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 30,),

                TextFormField(
                  //validator use korci jeno form er value na diye submit kora na jai
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      //kono value na diye jodi submit kori tahole ay message show korbe
                      return("Please Enter Product Image Url");

                    }
                    return null;//value null thakle null return korbe

                  },



                  controller: productImageControl,//ay feild er value control korbe

                  decoration: InputDecoration(
                    labelText: ("Enter Product Image"),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    fillColor: Colors.greenAccent,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 30,),

                TextFormField(
                  //validator use korci jeno form er value na diye submit kora na jai
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      //kono value na diye jodi submit kori tahole ay message show korbe
                      return("Please Enter Product Quantity");

                    }
                    return null;//value null thakle null return korbe

                  },


                  controller: productQuantityControl,//ay feild er value control korbe
                  keyboardType: TextInputType.number,//akhne only number dewa jabe text na


                  decoration: InputDecoration(
                    labelText: ("Enter Product Quantity"),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    fillColor: Colors.greenAccent,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 30,),

                TextFormField(

                  //validator use korci jeno form er value na diye submit kora na jai
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      //kono value na diye jodi submit kori tahole ay message show korbe
                      return("Please Enter Product Total Price");

                    }
                    return null;//value null thakle null return korbe

                  },



                  controller: productTotalPriceControl,//ay feild er value control korbe
                  keyboardType: TextInputType.number,//akhne only number dewa jabe text na


                  decoration: InputDecoration(
                    labelText: ("Enter Total Price"),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    fillColor: Colors.greenAccent,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    //validator er vitor je condition diyeci sob true hole fuction call hobe
                    if(_form.currentState!.validate()){
                          //function call
                          addProductRestApi(
                              productNameControl.text,
                              productCodeControl.text,
                              productCodeControl.text,
                              productImageControl.text,
                              productImageControl.text,
                              productTotalPriceControl.text
                          );

                    }



                  },
                  child:Text("Submit",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                  style: submitButtonStyle(),

                )


              ],


            ),
          ),

        ),

      )
    );
  }
}
