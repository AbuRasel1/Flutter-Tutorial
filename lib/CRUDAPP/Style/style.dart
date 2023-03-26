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
    width: MediaQuery.of(context).size.width,//width sob screen  a full hobe
    height: MediaQuery.of(context).size.height,//height sob screen a full hobe
    fit: BoxFit.cover,//ata use korle sob screen er sathe fit hobe
  );

}

DecoratedBox AppDropdownStyle(child){
  return DecoratedBox(
      decoration:BoxDecoration(
        color: WhiteColor,
        border: Border.all(color: WhiteColor,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(5))
        
      ),//box decoration
    child: Padding(
      padding: EdgeInsets.only(left: 30,right: 30),
      child: child,
    ),//padding


  );//decorationbox

}

//submit button style

ButtonStyle SubmitButtonStyle(){
  return ElevatedButton.styleFrom(

    padding: EdgeInsets.all(0),
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)

    )

  );
}


//button er vitor er text style
Ink ButtonTextStyle(ButtonText){//ink style er jonno use hoi
  return Ink(
    decoration: BoxDecoration(
      color: GreenColor,
      borderRadius: BorderRadius.circular(6),

    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child:Text(ButtonText,
       style: TextStyle(
         fontSize: 20,
         fontWeight: FontWeight.w400,
       ),
      ) ,
    ),

  );
}



