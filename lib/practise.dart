import 'package:app1/practise2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}
class App extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SumApp(),
      title: "Sum App",
    );

  }

}
class SumApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainAppUI();

  }

}
class MainAppUI extends State<SumApp>{
  Map<String,double>FormValue={"num1":0,"num2":0,"num3":0};


  double sum=0;
  FormValueChange(InputKey,InputValue){
    setState(() {
      FormValue.update((InputKey), (value) => double.parse(InputValue));
    });

  }
  SumAllNumber(){
    setState(() {
      sum=FormValue["num1"]!+FormValue["num2"]!+FormValue["num3"]!;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Sum App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Sum:${sum.toString()}",style: InputTextStyle(),),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (value1){
                FormValueChange("num1",value1);

              },

              decoration: InputFeildStyle("Enter First Number"),),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (value1){
                FormValueChange("num2",value1);

              },

              decoration: InputFeildStyle("Enter Second Number"),),
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (value1){
                FormValueChange("num3",value1);

              },


              decoration: InputFeildStyle("Enter Third Number"),),
            SizedBox(height: 20,),


            ElevatedButton(onPressed: (){
              SumAllNumber();
            }, child:Text("Submit",style: InputTextStyle(),),style: InputButtonStyle(),)
          ],
        ),
      ),
    );

  }

}