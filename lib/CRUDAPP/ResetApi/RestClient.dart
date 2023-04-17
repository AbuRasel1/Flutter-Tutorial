import 'dart:convert';
import 'package:app1/CRUDAPP/Style/style.dart';
import 'package:http/http.dart' as http;

//product rest api a ja ase sei gual get kora hoice
Future<List> productGridView()async{
  var url=Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var postHeader={"Content-Type":"application/json"};
  var response=await http.get(url,headers:postHeader);
  var resultCode=response.statusCode;
  var resultBody=json.decode(response.body);
  if(resultCode==200 && resultBody["status"]=="success"){
    successToast("Request Successfull");
    return resultBody['data'];

  }
  else{
    errorToast("Request Faild ! Try agiain letter");
    return [];
  }
}

//product set in rest api value gula form er maddhome rest api a jabe
Future<bool> productCreateRequest(formValues)async{
  var url=Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var postBody=json.encode(formValues);
  var postHeader={"Content-Type":"application/json"};
  var response=await http.post(url, headers: postHeader,body: postBody );

  var resultCode=response.statusCode;
  var resultBody=json.decode(response.body);
  if(resultCode==200 && resultBody['status']=='success'){
    successToast("Request successfull");
    return true;
    
  }
  else{
    errorToast("Request Failed ! Try again");
    return false;
  }

}