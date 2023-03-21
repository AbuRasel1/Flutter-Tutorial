


import 'package:flutter/material.dart';

InputDecoration SumAppInputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    fillColor: Colors.greenAccent,
    border: OutlineInputBorder(),
    filled: true,
    labelText: label,
  );
}
ButtonStyle SumAppButtonStyle(){
  return ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity,60),
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    )
  );

}


TextStyle SumAppFontStyle(){
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
    color: Colors.black,

  );
}


