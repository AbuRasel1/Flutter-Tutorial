import 'package:app1/3rd%20Class/navigation.dart';
import 'package:flutter/material.dart';

import '../api call.dart';
import '../style1.dart';
import 'listviewPractise.dart';

class update extends StatefulWidget {
  final Map productItem;
  const update(this.productItem);


  @override
  State<update> createState() => _updateState();

}

class _updateState extends State<update> {





  /*
  map use kore value set korbo tai map create korecci


   */
  Map<String,dynamic>formValues1={
    "Img":"",
    "ProductCode":"",
    "ProductName":"",
    "Qty":"",
    "TotalPrice":"",
    "UnitPrice":""

  };
  inputValueChange1(Mapkey,Textvalue){
    setState(() {
      formValues1.update(Mapkey, (value) => Textvalue);
    });
  }

  bool loading=false;

  formOnSubmit1() async {
    if(formValues1["Img"]!.length==0){
      errorToast1("Image Link Required !");
    }
    else if(formValues1["ProductCode"]!.length==0){
      errorToast1("Product Code Required !");


    }
    else if(formValues1['ProductName']!.length==0){
      errorToast1("Product Name Required");
    }
    else if(formValues1['Qty']!.length==0){
      errorToast1("Product Qty Required");
    }
    else if(formValues1['TotalPrice']!.length==0){
      errorToast1("Product TotalPrice Required");
    }
    else if(formValues1['UnitPrice']!.length==0){
      errorToast1("Product UnitPrice Required");
    }
    else{
      setState(() {
        loading =true;
      });
      await productUpdate(formValues1,widget.productItem["_id"]);
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>listview1()), (route) => false);
      setState(() {
      });

    }





  }
  @override
  void initState() {
    super.initState();
    setState(() {
      formValues1.update("Img", (value) => widget.productItem["Img"]);
      formValues1.update("ProductCode", (value) => widget.productItem["ProductCode"]);
      formValues1.update("ProductName", (value) => widget.productItem["ProductName"]);
      formValues1.update("Qty", (value) => widget.productItem["Qty"]);
      formValues1.update("TotalPrice", (value) => widget.productItem["TotalPrice"]);
      formValues1.update("UnitPrice", (value) => widget.productItem["UnitPrice"]);

    });
  }





  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Update Product"),
      ),

      body:Stack(
        children: [
          screenBackground1(context),
          Container(
              child:loading?(Center(child: CircularProgressIndicator(),)):(
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        TextFormField(
                          initialValue: formValues1['ProductName'],



                          decoration: inputFeildStyle("Enter  Product Name:"),
                          onChanged: (value){
                            inputValueChange1("ProductName", value);

                          },
                        ),
                        SizedBox(height: 10,),


                        TextFormField(
                          initialValue: formValues1['ProductCode'],

                          decoration: inputFeildStyle("Enter Product Code:"),
                          onChanged: (value){
                            inputValueChange1("ProductCode", value);
                          },
                        ),
                        SizedBox(height: 10,),

                        TextFormField(

                          initialValue: formValues1['Img'],

                          decoration: inputFeildStyle("Enter Product Image url:"),
                          onChanged: (value){
                            inputValueChange1("Img", value);

                          },
                        ),
                        SizedBox(height: 10,),

                        TextFormField(

                          initialValue: formValues1['TotalPrice'],

                          decoration: inputFeildStyle("Enter Unit Price:"),

                          onChanged: (value){
                            inputValueChange1("TotalPrice", value);

                          },
                        ),
                        SizedBox(height: 10,),

                        TextFormField(

                          initialValue: formValues1['UnitPrice'],

                          decoration: inputFeildStyle("Enter Total Price:"),

                          onChanged: (value){
                            inputValueChange1("UnitPrice", value);

                          },
                        ),
                        SizedBox(height: 10,),
                        dropDownStyle1(
                          DropdownButton(

                              value: formValues1["Qty"],
                              items: [

                                DropdownMenuItem(child: Text('Select QTY',style: allTextStyle(),),value: "",),
                                DropdownMenuItem(child: Text('1 PCS',style: allTextStyle(),),value: "1",),
                                DropdownMenuItem(child: Text('2 PCS',style: allTextStyle(),),value: "2",),
                                DropdownMenuItem(child: Text('3 PCS',style: allTextStyle(),),value: "3",),
                                DropdownMenuItem(child: Text('4 PCS',style: allTextStyle(),),value: "4",),

                              ],



                              onChanged: (value){
                                inputValueChange1("Qty", value);

                              },
                              underline: Container(),
                              isExpanded:true
                          ),

                        ),



                        SizedBox(height: 10,),





                        ElevatedButton(onPressed: (){
                          formOnSubmit1();



                        }, child: Text("Submit",style: allTextStyle(),) ,style: submitButtonStyle1(),)

                      ],
                    ),
                  )

              )
          )
        ],
      ),



    );
  }
}
