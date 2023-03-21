import 'package:flutter/material.dart';

InputDecoration InputFeildStyle(label){
  return InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.all(20),
    labelText: label,
    fillColor: Colors.greenAccent,
    filled: true
  );
}

ButtonStyle InputButtonStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),

    ),
    minimumSize: Size(double.infinity, 50)

  );
}

TextStyle InputTextStyle(){
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 40,

  );
}