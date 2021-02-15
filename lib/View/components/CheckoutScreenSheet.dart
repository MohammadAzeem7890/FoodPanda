import 'package:flutter/material.dart';

import 'PrimaryLabel.dart';

class CheckoutScreenSheet extends StatelessWidget {
  double height;
  CheckoutScreenSheet({this.height});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(5),
              topLeft: Radius.circular(5)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryLabel(label: "Delivery Area"),
                Text("Akhtar Colony (min:500)", style: TextStyle(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid),),
              ],
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
            Row(
              children: [
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

