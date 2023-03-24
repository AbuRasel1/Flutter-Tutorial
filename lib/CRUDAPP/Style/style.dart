import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const RedColor=Color.fromRGBO(236, 28, 36, 1);
const GreenColor=Color.fromRGBO(0, 128, 0, 1);
const WhiteColor=Color.fromRGBO(253, 252, 252, 1);
const BlackColor=Color.fromRGBO(44, 62, 80, 1);


//input feild gula decoration korar function
InputDecoration AppInputDecoration(label){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: GreenColor,width: 2),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: WhiteColor,width: 2),
    ),
    border: OutlineInputBorder(),
    fillColor: WhiteColor,
    filled: true,
    labelText: label,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)



  );
}

//Background Image set function
BackgrounImage(context){
  return SvgPicture.asset(
    'assets/images/screen-back.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );

}