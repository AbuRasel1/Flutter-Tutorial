//input feild style
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

InputDecoration inputFeildStyle(label){
  return InputDecoration(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white,width: 2),
      borderRadius: BorderRadius.all(Radius.circular(2)),

    ),

    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    fillColor: Colors.greenAccent,
    filled: true,
    labelText: label,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
      borderSide: BorderSide(color: Colors.black,width: 2)

    ),
    labelStyle: allTextStyle(),



  );
}
//drop down style
DecoratedBox dropDownStyle1(child){
  return DecoratedBox(
      decoration:BoxDecoration(
      color: Colors.greenAccent,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.white,width: 2),




  ),


    child: Padding(
      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
      child: child,

    ),

  );


}

//Button style
ButtonStyle submitButtonStyle1(){
  return ElevatedButton.styleFrom(

    foregroundColor: Colors.white,
    backgroundColor: Colors.greenAccent,
    minimumSize: Size(double.infinity, 50),
    padding: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),



    ),



  );
}
//Font style
TextStyle allTextStyle(){
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black
  );
}


//screen backgroun
screenBackground1(context){
  return SvgPicture.asset('assets/images/screen-back.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

//grid view style
SliverGridDelegateWithFixedCrossAxisCount gridview1(){
  return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:2,
      crossAxisSpacing: 2,
      mainAxisExtent: 300,
  );
}

//success toast
successToast1(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0
  );
}
//error toast
//success toast
errorToast1(msg){
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0
  );
}