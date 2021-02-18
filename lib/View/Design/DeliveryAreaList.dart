import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/View/Design/HomePage.dart';

class DeliveryAreaList extends StatefulWidget {
  @override
  _DeliveryAreaListState createState() => _DeliveryAreaListState();
}

class _DeliveryAreaListState extends State<DeliveryAreaList> {

  var selectedArea;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      selectedArea = 0;
    });
  }

  setSelectedArea(val){
    setState(() {
      selectedArea = val;
    });
  }


  @override
  Widget build(BuildContext context) {
    double headerHeight = 45;
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 40),
      child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: headerHeight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Please Select Delivery Area"),
                          Radio(
                            activeColor: Colors.green,
                            groupValue: 1, value: 1, onChanged: (val){
                          },)
                        ],
                      ),
                    ),
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.black45,),
                    InkWell(
                      onTap: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage())),
                      child: Container(
                        height: MediaQuery.of(context).size.height - headerHeight,
                        padding: const EdgeInsets.only(bottom: 15),
                        child: ListView.separated(
                          shrinkWrap: true,
                            itemBuilder: (context, index){
                              return Container(
                                height: 50,
                                child: radioItems("Abysenia Lines", selectedArea, index),
                              );
                            },
                            separatorBuilder: (context, index){
                              return Divider(
                                height: 1, thickness: 1,color: Colors.black45,
                              );
                            },
                            itemCount: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
   radioItems(itemName, groupValue, index){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemName),
          Radio(groupValue: groupValue, value: index, onChanged: (val){
            setSelectedArea(val);
          },)
        ],
      ),
    );
  }
}


