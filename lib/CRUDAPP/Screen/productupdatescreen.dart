import 'package:app1/CRUDAPP/Screen/productgridViewscreen.dart';
import 'package:flutter/material.dart';
import 'package:app1/CRUDAPP/Style/style.dart';

import '../ResetApi/RestClient.dart';


class productupdatescreen extends StatefulWidget {
  final Map productItem;
  const productupdatescreen(this.productItem);

  @override
  State<productupdatescreen> createState() => _productupdatescreenState();
}

class _productupdatescreenState extends State<productupdatescreen> {



  @override
  void initState() {
    setState(() {
      formValues.update("Img", (value) => widget.productItem["Img"]);
      formValues.update("ProductCode", (value) => widget.productItem["ProductCode"]);

      formValues.update("ProductName", (value) => widget.productItem["ProductName"]);
     formValues.update("Qty", (value) => widget.productItem["Qty"]);

      formValues.update("TotalPrice", (value) => widget.productItem["TotalPrice"]);
      formValues.update("UnitPrice", (value) => widget.productItem["UnitPrice"]);

    });
    



  }




  //map er vitor value set korar map
  Map<String,dynamic>formValues={

    "Img":"",
    "ProductCode":"",
    "ProductName":"",
    "Qty":"",
    "TotalPrice":"",
    "UnitPrice":""


  };
  bool loading=false;
//value newar function
  inputValueChange(mapKey,textValue){
    setState(() {
      formValues.update(mapKey, (value) => textValue);
    });


  }
  //value submit submit button click korar por
  formOnSubmit()async{
    if(formValues['Img']!.length==0){
      errorToast("Image Link Required");

    }
    else if(formValues['ProductCode']!.length==0){
      errorToast("Product Code Required");

    }
    else if(formValues['ProductName']!.length==0){
      errorToast("Product Name Required");

    }
    else if(formValues['Qty']!.length==0){
      errorToast("Quentity Required");

    }
    else if(formValues['TotalPrice']!.length==0){
      errorToast("Total Price  Required");

    }
    else if(formValues['UnitPrice']!.length==0){
      errorToast("Uint Price Required");

    }
    else{
      setState(() {
        loading=true;
      });
      await productUpdateRequest(formValues,widget.productItem['_id']);
      //pushAndRemoveUntil mane new page a gele ar
      // ager page a asa jabe route true dile ar false dile ager page jawa jabe na
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context)=>productgridViewScreen()), (route) => false);


    }

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Update Product"),
          centerTitle: true,
          toolbarHeight: 60,

        ),
        body:Stack(
          children: [
            screenBackground(context),//Screen background image use kora hoice akhane
            Container(
              //loading?():() ata inline if else (jodi true hoi tahole first ta kaj korbe ar false hole second ta
              /*
              loading a jokhon rest api a data jabe tokhon circle er moto gol ghurbe
              ar data patano sesh hole abar form dekhabe
             */
                child:loading?(Center(child: CircularProgressIndicator(),)):( SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),//for padding
                      //Text form feild
                      TextFormField(
                        //initial value te je value dibo oitai form a thakbe prothome
                        initialValue: formValues['ProductName'] ,
                        onChanged: (value){
                          inputValueChange('ProductName',value);

                        },
                        decoration: inputFeildDecoration("Enter Product Name"),
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        //initial value te je value dibo oitai form a thakbe prothome
                        initialValue: formValues['ProductCode'] ,
                        onChanged: (value){
                          inputValueChange('ProductCode',value);

                        },
                        decoration: inputFeildDecoration("Enter Product Code"),),
                      SizedBox(height: 20,),


                      TextFormField(
                        //initial value te je value dibo oitai form a thakbe prothome
                        initialValue: formValues['Img'] ,
                        onChanged: (value){
                          inputValueChange('Img', value);

                        },
                        decoration: inputFeildDecoration("Enter Product Image Url"),),
                      SizedBox(height: 20,),

                      TextFormField(
                        //initial value te je value dibo oitai form a thakbe prothome
                        initialValue: formValues['UnitPrice'] ,
                        onChanged: (value){
                          inputValueChange('UnitPrice',value);

                        },
                        decoration: inputFeildDecoration("Enter Product Unit Price"),),
                      SizedBox(height: 20,),

                      TextFormField(
                        //initial value te je value dibo oitai form a thakbe prothome
                        initialValue: formValues['TotalPrice'],
                        onChanged: (value){
                          inputValueChange('TotalPrice', value);

                        },
                        decoration: inputFeildDecoration("Enter Product Total Price"),),
                      SizedBox(height: 20,),

                      dropDownStyle(//drop down style function call er child er mooddhe disi jno sob style gula kaj kore tai
                        //Drop down button
                        DropdownButton(
                          value:formValues['Qty'],
                          items:[
                            DropdownMenuItem(child: Text("Select Qty"),value: '',),
                            DropdownMenuItem(child: Text("1 Pcs"),value: '1 pcs',),
                            DropdownMenuItem(child: Text("2 pcs"),value: '2 pcs',),
                            DropdownMenuItem(child: Text("3 pcs"),value: '3 pcs',),
                            DropdownMenuItem(child: Text("4 pcs"),value: '4 pcs',),
                          ] ,
                          onChanged: (value){
                            inputValueChange('Qty',value);
                          },
                          underline: Container(),
                          isExpanded: true,

                        ),
                      ),

                      SizedBox(height: 20,),
                      Container(//container use koreci jeno left theke right porjont full screen jaiga nibe
                          child:  ElevatedButton(
                              style: submitButtonStyle(),

                              onPressed: (){
                                formOnSubmit();
                              },
                              child:successButtonStyle("Submit")
                          )
                      )

                    ],

                  ),
                )
                )

            )
          ],
        )

    );
  }
}
