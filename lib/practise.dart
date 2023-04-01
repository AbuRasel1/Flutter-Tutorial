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
    );
  }

}

class HomeActivity extends StatefulWidget {  @override
  State<StatefulWidget> createState() {


    return HomePageUI();

  }
}

class HomePageUI extends State<HomeActivity>{
  PojoClass?ProductList;

  RestApiCall()async{
    Uri url=Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
    http.Response response=await http.get(url);
    if(response.statusCode==200){
      ProductList=PojoClass.fromJson(jsonDecode(response.body));
      setState(() {

      });

    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    RestApiCall();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("This is Rest Api call "),
      ),
      body: ListView.builder(
          itemCount: ProductList?.data?.length??0,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(ProductList?.data?[index].productName??''),
              subtitle: Text(ProductList?.data?[index].productCode??''),
              trailing: Text(ProductList?.data?[index].unitPrice??''),
            );
          }),

    );



  }

}

//pojo class
class PojoClass {
  String? status;
  List<Data>? data;

  PojoClass({this.status, this.data});

  PojoClass.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

}

class Data {
  String? sId;
  String? productName;
  String? productCode;
  String? img;
  String? unitPrice;
  String? qty;
  String? totalPrice;
  String? createdDate;

  Data(
      {this.sId,
        this.productName,
        this.productCode,
        this.img,
        this.unitPrice,
        this.qty,
        this.totalPrice,
        this.createdDate});

  Data.fromJson(Map<String, dynamic> json) {
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
