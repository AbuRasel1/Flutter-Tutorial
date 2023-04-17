import 'package:app1/3rd%20Class/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestApi(),
    );
  }

}
class RestApi extends StatefulWidget {
  const RestApi({Key? key}) : super(key: key);

  @override
  State<RestApi> createState() => _RestApiState();
}

class _RestApiState extends State<RestApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Api Get and Post"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            return ListTile(
              title: Text("ListTitel"),
              subtitle: Text("Subtitle"),
              trailing: Text("Trailing"),
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

