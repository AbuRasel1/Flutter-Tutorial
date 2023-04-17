import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Style.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostApi(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class PostApi extends StatefulWidget {
  const PostApi({Key? key}) : super(key: key);

  @override
  State<PostApi> createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {

  Future<void>restApiCall(name,code,image,unitPrice,quantity,totalPrice)async{
    Uri url=Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");


    http.Response response=await http.post(url,
          headers:{
            'Content-Type':'application/json',
            'Accept':'application/json'
          },

    body: jsonEncode(
        {
          "Img":image,
          "ProductCode":code,
          "ProductName":name,
          "Qty":quantity,
          "TotalPrice":totalPrice,
          "UnitPrice":unitPrice,
        }

    )
    );

    if(response.statusCode==200){
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text ("Product Add Successfull")));

    }

  }

  //input feild text control
  TextEditingController name=TextEditingController();
  TextEditingController code=TextEditingController();
  TextEditingController unitPrice=TextEditingController();
  TextEditingController image=TextEditingController();
  TextEditingController quantity=TextEditingController();
  TextEditingController totalPrice=TextEditingController();

  //form ke global key set kora
  GlobalKey<FormState>form=GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Api "),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20),
          child:Form(
            key: form,
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextFormField(
                  validator: (String?value){
                    if(value?.isEmpty??true){
                      return("Please Enter Product Name");
                    }
                    return null;
                  },



                  controller: name,
                  decoration: inputFeildStyle("Please Enter Product Name:"),

                ),
                SizedBox(height: 20,),

                TextFormField(
                  validator: (String?value){
                    if(value?.isEmpty??true){
                      return("Please Enter Product Code");
                    }
                    return null;
                  },
                  controller: code,
                  decoration: inputFeildStyle("Please Enter Product Code:"),

                ),
                SizedBox(height: 20,),

                TextFormField(
                  validator: (String?value){
                    if(value?.isEmpty??true){
                      return("Please Enter Product Unit Price");
                    }
                    return null;
                  },
                  controller: unitPrice,
                  decoration: inputFeildStyle("Please Enter Product Unit Price:"),

                ),
                SizedBox(height: 20,),

                TextFormField(
                  validator: (String?value){
                    if(value?.isEmpty??true){
                      return("Please Enter Product Image");
                    }
                    return null;
                  },

                  controller: image,
                  decoration: inputFeildStyle("Please Enter Product Image:"),

                ),

                SizedBox(height: 20,),

                TextFormField(
                  validator: (String?value){
                    if(value?.isEmpty??true){
                      return("Please Enter Product Quantity");
                    }
                    return null;
                  },
                  controller: quantity,
                  decoration: inputFeildStyle("Please Enter Product Quantity:"),

                ),
                SizedBox(height: 20,),


                TextFormField(
                  validator: (String?value){
                    if(value?.isEmpty??true){
                      return("Please Enter Product Total Price");
                    }
                    return null;
                  },

                  controller: totalPrice,
                  decoration: inputFeildStyle("Please Enter Product Total Price:"),

                ),
                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){
                  restApiCall(
                      name.text, code.text, image.text, unitPrice.text, quantity.text, totalPrice.text
                  );


                }, child:Text("Submit"),style: submitButtonStyle(),)

              ],
            ),
          )
        ),
      ),
    );
  }
}

//Pojo class
class RestApiPojoClass_1 {
  String? status;
  List<Product>? data;

  RestApiPojoClass_1({this.status, this.data});

  RestApiPojoClass_1.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Product>[];
      json['data'].forEach((v) {
        data!.add(new Product.fromJson(v));
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
