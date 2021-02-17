import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/View/Design/DeliveryAreaList.dart';
import 'package:foodpanda/View/Design/HomePage.dart';
import 'package:foodpanda/View/components/PrimaryButton.dart';
import 'package:foodpanda/View/components/primaryTextField.dart';

class UpdateDealSheet extends StatefulWidget {
  @override
  _UpdateDealSheetState createState() => _UpdateDealSheetState();
}

class _UpdateDealSheetState extends State<UpdateDealSheet> {

  TextEditingController specialInstructions = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Deal 01", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Image.asset('assets/images/crossIcon.png')),
                  ],),
                ),
                Divider(thickness: 2, height: 2, color: Colors.black12,),
                radioHeading("Zinger burger/Crispy broast/ClubSandwich, Fries & Coleslaw"),
                listOfRadioItems(context),
                radioHeading("Zinger burger/Crispy broast/ClubSandwich, Fries & Coleslaw"),
                listOfRadioItems(context),
                Align(
                  alignment: Alignment.centerLeft,
                  child: radioHeading(
                      "Special Instructions"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("You can write down here any special instructions", style: TextStyle(fontSize: 12, color: Colors.black38),),
                ),
                PrimaryTextField(placeholder: "E.g: No mayo", controller: specialInstructions, maxLines: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: PrimaryButton(
                      title: "Update",
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DeliveryAreaList()));
                      },),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



Widget radioHeading(dealName){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: Text(dealName, style: TextStyle(
      fontSize: 18,fontWeight: FontWeight.bold,
    ),),
  );
}

Widget listOfRadioItems(context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: MediaQuery.of(context).size.height - 550,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index){
            return Container(
              height: 40,
              child: ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  Radio(value: index, groupValue: index, onChanged: (val){
                    val = index;
                  }),
                  Text("Zinger burger", style: TextStyle(fontSize: 18),),
                ],
              ),
            );
          }),
    ),
  );
}

