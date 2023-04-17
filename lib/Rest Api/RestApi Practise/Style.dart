import 'package:flutter/material.dart';

InputDecoration inputFeildStyle(label){
  return InputDecoration(
    border: OutlineInputBorder(),
    labelText: label,
    fillColor: Colors.greenAccent,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),

  );
}

ButtonStyle submitButtonStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.greenAccent,
    minimumSize: Size(double.infinity, 40),
    padding: EdgeInsets.fromLTRB(20, 20, 20, 29),
  );
}