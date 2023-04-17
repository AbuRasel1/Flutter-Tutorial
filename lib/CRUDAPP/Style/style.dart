import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

//Start product create screen style

InputDecoration inputFeildDecoration(label){
  return InputDecoration(
      focusedBorder: OutlineInputBorder(//input feild er moddhe click korle border er color red hobe
          borderSide: BorderSide(color: Colors.redAccent,width: 2),
      ),

      border: OutlineInputBorder(),//sob
    fillColor: Colors.greenAccent,
    contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
    labelText: label,
    filled: true,
    labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
    enabledBorder:OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white,width: 2),
    ),
  );

}


//Screen background image
screenBackground(context){
  return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment: Alignment.center,
    width:MediaQuery.of(context).size.width ,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

//drop down menut style korar jonno decoratedBox widget use koreci
DecoratedBox dropDownStyle(child){
  return DecoratedBox(
      decoration:BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(color: Colors.white,width: 1),
        borderRadius: BorderRadius.circular(5),

      ),
    child: Padding(
      padding: EdgeInsets.only(left: 30 ,right: 30),
      child: child,
    ),

  );

}

//submit button style
ButtonStyle submitButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );
}

//akhane ink use kore decoration kora jai
//akhane button er width color text ,text style er jonno use koreci
Ink successButtonStyle(buttonText){//button text use koreci button name er jonno
  return Ink(
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(6),



    ),
    child: Container(//container use koreci jeno button er width full screen nei
      height: 50,
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,

        ) ,),


    ),

  );
}

//value sob submit na hoile ay function call hoye error message dibe
errorToast(msg){
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

//value sob submit  hoile ay function call hoye success message dibe

successToast(msg){
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