import 'package:flutter/material.dart';

import '../api call.dart';
import '../style1.dart';
import 'listviewPractise.dart';


class createProduct extends StatefulWidget {
  const createProduct({Key? key}) : super(key: key);

  @override
  State<createProduct> createState() => _createProductState();
}




class _createProductState extends State<createProduct> {

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
      await creteProduct(formValues1);
    }
    setState(() {
      loading=false;
    });




  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product"),
        actions: [
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
              builder: (builder)=>listview1()));}, child:Text("List View"))
        ],
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



                          decoration: inputFeildStyle("Enter  Product Name:"),
                          onChanged: (value){
                            inputValueChange1("ProductName", value);

                          },
                        ),
                        SizedBox(height: 10,),


                        TextFormField(
                          decoration: inputFeildStyle("Enter Product Code:"),
                          onChanged: (value){
                            inputValueChange1("ProductCode", value);
                          },
                        ),
                        SizedBox(height: 10,),

                        TextFormField(

                          decoration: inputFeildStyle("Enter Product Image url:"),
                          onChanged: (value){
                            inputValueChange1("Img", value);

                          },
                        ),
                        SizedBox(height: 10,),

                        TextFormField(
                          decoration: inputFeildStyle("Enter Unit Price:"),

                          onChanged: (value){
                            inputValueChange1("TotalPrice", value);

                          },
                        ),
                        SizedBox(height: 10,),

                        TextFormField(
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
