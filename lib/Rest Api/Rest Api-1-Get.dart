//akhane api theke data get kora hoice .Data gula get korar por Se gula screen a show kora hoice


import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
      title: "Rest Api-1",
    );

  }

}

class HomeActivity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageUI();

  }

}
class HomePageUI extends State<HomeActivity>{

  RestApiPojoClass_1? ProductListPojo;//RestApiPojoClass_1 er sob ProductListPojo rekhe dibe



  //init state use korle Live cycle gula call hobe

  @override
  void initState() {
    super.initState();
    getProductListApi();

  }

//async mane kono kichu olpo somoy er jonno wait kore kono value er jonno/
  Future<void> getProductListApi() async{// Rest api call korar jonno function
    String url="https://crud.teamrabbil.com/api/v1/ReadProduct";//postman er vitor oi file er link
    Uri uri=Uri.parse(url);//url ke uri a parse kora hoice
    http.Response response=await http.get(uri);//uri ke call koreci
    /*await mane joto  khon http.get call kora hobe and
     value pawa hobe sei somoy porjonto  wait kore data pawar jonno
     value pawar por seta response er moddhe set hobe

     */

    if(response.statusCode==200){
      //Rest api theke ja json a pabe sei gula  (jsondecode) kore Map a convart korbe
      ProductListPojo=RestApiPojoClass_1.fromJson(jsonDecode(response.body));
      setState(() {});//setState use korle screen a sob value gula dekhabe refresh hoye

    }

  }

  //rest api theke pawa data gula pawar por sei gula data list vabe set korar task
  /*
  1.pojo class(je data gula ase sob json a ase oigula dart a convart korar jonno pojo class use kora hoi)
  2.List of pojo class
  3.show korte hobe amader screen


   */





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Rest Api-1"),
      ),
      body: ListView.builder(
        itemCount: ProductListPojo?.ListOfProducts?.length??0,


          itemBuilder: (context,index){
          return ListTile(
            title: Text(ProductListPojo?.ListOfProducts?[index].productName??''),
            subtitle: Text(ProductListPojo?.ListOfProducts?[index].productCode??''),
            trailing: Text(ProductListPojo?.ListOfProducts?[index].unitPrice??''),
          );
          }

      ),

      
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
