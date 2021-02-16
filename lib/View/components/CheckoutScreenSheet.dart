import 'package:flutter/material.dart';
import 'package:foodpanda/View/Design/CheckOutForm.dart';
import 'package:foodpanda/View/components/OrderButton.dart';

import 'PrimaryLabel.dart';

class CheckoutScreenSheet extends StatelessWidget {
  double height;
  double width;
  CheckoutScreenSheet({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return SingleChildScrollView(
      child: Card(
        elevation: 9,
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(5),
                topLeft: Radius.circular(5)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryLabel(label: "Delivery Area"),
                     orientation == Orientation.portrait ? Text("Akhtar Colony (min:500)", style: TextStyle(
                      fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid),):
                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Text("Akhtar Colony (min:500)", style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                           decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid),),
                     )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryLabel(label: "subtotal"),
                  PrimaryLabel(label: "Rs.1024"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: PrimaryLabel(label: "Gst(16%)".toUpperCase()),
                  ),
                  PrimaryLabel(label: "Rs.350"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: PrimaryLabel(label: "Delivery Charges"),
                  ),
                  PrimaryLabel(label: "Rs.350"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: RichText(
                        text: TextSpan(
                            text: "Total", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                            children: [
                              TextSpan(
                                text: "(Incl. GST)", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
                              )
                            ]
                        ),
                      ),
                    ),
                    PrimaryLabel(label: "Rs.0000",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Container(
                  height: 50,
                    child: RaisedButton(
                      color:  Colors.blue,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckOutForm()));
                      },
                      child: Center(child: Text("Proceed to Checkout",style: TextStyle(color: Colors.white,
                          fontSize: 16, fontWeight: FontWeight.bold),)),
                    ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

