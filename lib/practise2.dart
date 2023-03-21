import 'package:flutter/material.dart';

InputDecoration InputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    fillColor: Colors.greenAccent,
    filled: true,
    border: OutlineInputBorder(),
    labelText: label,

  );

}

ButtonStyle submitButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    minimumSize: Size(double.infinity,60),
    backgroundColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )


  );
}
