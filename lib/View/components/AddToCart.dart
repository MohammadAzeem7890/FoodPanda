import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/View/components/Heading.dart';
import 'package:foodpanda/View/components/PrimaryLabel.dart';
import 'package:foodpanda/View/components/primaryTextField.dart';

class AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Heading(heading: "Cart",),
            ),
            Divider(
              height: 5,
              color: Colors.black26,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                      child: txt("Item"),),
                  txt("Qty"),
                  txt("Special \n Instructions"),
                  txt("Price"),
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.black26,
              thickness: 2,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 100,
                          child: Text("double decker beef burger"),
                        ),
                        Text("1"),
                        Text(" "),
                        Text("Rs.\n350"),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 5,
                    color: Colors.black26,
                    thickness: 2,
                  );
                },
              ),
            ),
            Divider(
              height: 5,
              color: Colors.black26,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text("Subtotal"),
                    ),
                  ),
                  Text("Rs.\n 2453"),
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.black26,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Text("Gst(16%)".toUpperCase()),
                  ),
                  Text("Rs.\n350"),
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.black26,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text("Delivery Chareges"),
                  ),
                  Text("Rs.\n350"),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
          ],
        ),
    );
  }
}

Widget txt(txt){
  return Text(txt,
    style: TextStyle(
      fontWeight: FontWeight.bold
    ),
  );
}