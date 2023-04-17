import 'dart:convert';

import 'package:app1/Rest%20Api/Rest%20Api-1-Get.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'PostApi.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetApi(),
      debugShowCheckedModeBanner: false,
      title: "Get Api",
    );
  }
}

class GetApi extends StatefulWidget {
  const GetApi({Key? key}) : super(key: key);

  @override
  State<GetApi> createState() => _GetApiState();
}

class _GetApiState extends State<GetApi> {
  RestApiPojoClass_1?productList;

  //function
  Future<void> restApiCall()async{
    Uri url=Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
    http.Response response=await http.get(url);
    if(response.statusCode==200){
      productList=RestApiPojoClass_1.fromJson(jsonDecode(response.body));
      setState(() {

      });
    }


  }


//init state er moddhe function call
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    restApiCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thi is Get Api Data"),
        actions: [
          ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>PostApi()));}, child:Text("Create Product"))
        ],
      ),

      body: ListView.builder(
          itemCount: productList?.data?.length??0,

          itemBuilder: (context,index){

            return ListTile(



              title: Text(productList?.data?[index].productName??''),
              subtitle: Text(productList?.data?[index].productCode??''),
              trailing: Text(productList?.data?[index].unitPrice??''),

            );

          }),

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
