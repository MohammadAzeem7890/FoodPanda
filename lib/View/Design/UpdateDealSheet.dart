import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateDealSheet extends StatefulWidget {
  @override
  _UpdateDealSheetState createState() => _UpdateDealSheetState();
}

class _UpdateDealSheetState extends State<UpdateDealSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text("Deal 01", style: TextStyle(color: Colors.black, fontSize: 14),),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Center(child: Image.asset('assets/images/crossIcon.png', height: 15,),),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height-50,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white24,
                      offset: Offset( 0, 0),
                      blurRadius: 3,
                      spreadRadius: 4
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Deal 01", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.normal),),
                      Image.asset('assets/images/crossIcon.png', height: 15,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
