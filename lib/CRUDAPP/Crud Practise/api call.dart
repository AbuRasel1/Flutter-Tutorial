//create product
import 'package:app1/CRUDAPP/Style/style.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

Future<bool> creteProduct(formValues1) async {
  var url=Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var postBody=json.encode(formValues1);
  var  postHeader={"Content-Type":"application/json"};
  var response=await http.post(url,headers: postHeader,body: postBody);

  var resultCode=response.statusCode;
  var resultBody=json.decode(response.body);

  if(resultCode==200 && resultBody['status']=='success'){
    successToast("Request Successfull !");
    return true;
  }

  else{
    errorToast("Request Not Successfull Try Again!");
    return false;

  }
}


//product grid view

Future <List> productListView1() async {
  var url=Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
  var postHeader={"Content-Type":"application/json"};
  var response=await http.get(url,headers: postHeader);
  var resultCode=response.statusCode;
  var resultBody=json.decode(response.body);

  if(resultCode==200 && resultBody['status']=='success'){
    successToast("Product View Successfull");
    return resultBody['data'];
  }
  else{
    errorToast("Request Failed ! Try Again Letter");
    return [];

  }

}

//item delete
deleteList(id) async {
  var url=Uri.parse("https://crud.teamrabbil.com/api/v1/DeleteProduct/"+id);
  var response=await http.get(url);

  var resultCode=response.statusCode;
  var resultBody=json.decode(response.body);
  if(resultCode==200 && resultBody["status"]=="success"){
    successToast("Delete Api Read Successfull");
  }
  else{
    errorToast("Faild Delete Api Read");
  }

}

Future<bool> productUpdate(formValues1,id) async {
  var url=Uri.parse("https://crud.teamrabbil.com/api/v1/UpdateProduct/"+id);
  var postBody=json.encode(formValues1);
  var  postHeader={"Content-Type":"application/json"};
  var response=await http.post(url,headers: postHeader,body: postBody);

  var resultCode=response.statusCode;
  var resultBody=json.decode(response.body);

  if(resultCode==200 && resultBody['status']=='success'){
    successToast("Request Successfull !");
    return true;
  }

  else{
    errorToast("Request Not Successfull Try Again!");
    return false;

  }
}
