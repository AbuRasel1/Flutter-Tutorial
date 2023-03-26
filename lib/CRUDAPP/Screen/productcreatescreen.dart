import 'package:app1/CRUDAPP/Style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CrudApp extends StatefulWidget {
  const CrudApp({Key? key}) : super(key: key);

  @override
  State<CrudApp> createState() => HomePageUI();
}

class HomePageUI extends State<CrudApp>{

  Map<String,dynamic> InputFromValue ={

      "Img":"",
      "ProductCode":"",
      "ProductName":"",
      "Qty":"",
      "TotalPrice":"",
      "UnitPrice":""


  };

  InputOnChange(Mapkey,TextValue){
    setState(() {
      InputFromValue.update(Mapkey, (value) => TextValue);

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Croud App"),//appbar title
      ),
      body: Stack(
        //background image
        children: [
          BackgrounImage(context),//background image

          Container(//container
            padding: EdgeInsets.all(20),//container er all padding hobe 20
            child: Column(

              children: [//children niyeci column er vitor
                SizedBox(height: 20,),
                TextFormField(onChanged: (TextValue){InputOnChange("ProductName",TextValue); },decoration: AppInputDecoration("Product Name"),),

                SizedBox(height: 20,),

                TextFormField(onChanged: (TextValue){InputOnChange("ProductCode",TextValue); },decoration: AppInputDecoration("Product Code"),),

                SizedBox(height: 20,),

                TextFormField(onChanged: (TextValue){InputOnChange("Img",TextValue);},decoration: AppInputDecoration("Product Image Url"),),

                SizedBox(height: 20,),

                TextFormField(onChanged: (TextValue){InputOnChange("UnitPrice",TextValue);},decoration: AppInputDecoration("Unit Price"),),

                SizedBox(height: 20,),

                TextFormField(onChanged: (TextValue){InputOnChange("TotalPrice",TextValue);},decoration: AppInputDecoration("Total Price"),),

                SizedBox(height: 20,),

                AppDropdownStyle(
                    DropdownButton(//drop down button droupdown menue er moto kaj kore
                      value: "",//value jeta faka oita auto select hoye thakbe


                        items://drop down er vitor ki ki item thakbe

                        [

                          DropdownMenuItem(child: Text("Select QT"),value:('')),
                          DropdownMenuItem(child: Text("1 pcs"),value:('1 pcs')),
                          DropdownMenuItem(child: Text("2 pcs"),value:('2 pcs')),
                          DropdownMenuItem(child: Text("3 pcs"),value:('3 pcs')),
                          DropdownMenuItem(child: Text("4 pcs"),value:('4 pcs')),
                        ],//items


                        onChanged: (TextValue){InputOnChange("Qty",TextValue);},

                      underline: Container(),//underline sob dike hobe
                      isExpanded: true,//width full screen nibe

                    )//dropdown button


                ),//app drop down style function

                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){}, child:ButtonTextStyle("Submit"),style: SubmitButtonStyle(),)
                


              ],
            ),
          ),
        ],
      ),
    );
  }
}

