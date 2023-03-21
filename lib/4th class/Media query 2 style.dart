import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle Headline(context){
  var width=MediaQuery.of(context).size.width;
  if(width<600){
    return TextStyle(
      fontSize: 25,
      color:Colors.green,
      fontWeight: FontWeight.w400
    );
  }
  else{
    return TextStyle(
        fontSize: 45,
        color:Colors.deepPurple,
        fontWeight: FontWeight.w400
    );
  }

}