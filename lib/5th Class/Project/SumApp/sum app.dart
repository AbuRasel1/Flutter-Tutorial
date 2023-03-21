import 'package:app1/5th%20Class/Project/SumApp/sum%20app%20style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SumApp(),
    );

  }

}
class SumApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SumAppUI();

  }

}
class SumAppUI extends State<SumApp>{
  Map<String,double>FormValue={'num1':0,"num2":0,"num3":0};

  double sum=0;

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey,InputValue){
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(InputValue));
      });
    }
    SumAllNumber(){
      setState(() {
        sum=FormValue['num1']!+FormValue['num2']!+FormValue['num3']!;

      });

    }





    return Scaffold(
      appBar: AppBar(
        title: Text("This is Sum Calculate App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [

            Text(sum.toString(),style: SumAppFontStyle(),),
            SizedBox(height: 20,),
            TextFormField(
              onChanged:(value){
                MyInputOnChange("num1", value);

              },

              decoration:SumAppInputStyle (("Enter First Number")),),
            SizedBox(height: 20,),

            TextFormField(
                onChanged:(value){
                  MyInputOnChange("num2", value);

                },
                decoration:SumAppInputStyle("Enter Second Number")),
            SizedBox(height: 20,),

            TextFormField(
              onChanged:(value){
                MyInputOnChange("num3", value);

              },
                decoration:SumAppInputStyle("Enter Third Number")),
            SizedBox(height: 20,),

            Container(child: ElevatedButton(onPressed: (){
              SumAllNumber();
            },
                child: Text("Sum",style: SumAppFontStyle(),),style: SumAppButtonStyle(),),

            )
          ],

        ),

      )
    );

  }

}