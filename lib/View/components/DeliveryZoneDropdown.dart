import 'package:flutter/material.dart';
import 'package:foodpanda/Controller/Network.dart';
import 'package:foodpanda/Model/DeliveryZoneModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeliveryZoneDropdown extends StatefulWidget {
  @override
  _DeliveryZoneDropdownState createState() => _DeliveryZoneDropdownState();
}

class _DeliveryZoneDropdownState extends State<DeliveryZoneDropdown> {
  String dropdownValue = 'One';

  Future<DeliveryZoneModel> deliveryZoneList;
  DeliveryZones selectedZone;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    deliveryZoneList = Network.getDeliveryZones();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 45,
        padding: const EdgeInsets.only(left: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.black45),
          borderRadius: BorderRadius.circular(8),
        ),
        child: FutureBuilder<DeliveryZoneModel>(
          future: deliveryZoneList,
          builder: (context, AsyncSnapshot<DeliveryZoneModel> snapsot){
            if(!snapsot.hasData){
              return LinearProgressIndicator(backgroundColor: Colors.black,);
            }
            else{
              return DropdownButton<DeliveryZones>(
                hint: Text("Please Select Delivery Area", style: TextStyle(color: Colors.black87),),
                value: selectedZone,
                icon: Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Icon(Icons.arrow_drop_down, color: Colors.black45,),
                ),
                iconSize: 35,
                elevation: 16,
                style: TextStyle(color: Colors.black45),
                underline: Container(
                  color: Colors.transparent,
                ),
                onChanged: (DeliveryZones zone) async {
                  setState(() {
                    selectedZone = zone;
                  });
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setString("selectedZone", selectedZone.toString());
                },
                items: snapsot.data.deliveryZones.map((DeliveryZones zone) {
                  return DropdownMenuItem<DeliveryZones>(
                    value: zone,
                    child: Text(zone.areaName, style: TextStyle(color: Colors.black45),),
                  );
                }).toList(),
              );
            }
          },
        ),
      ),
    );
  }
}
