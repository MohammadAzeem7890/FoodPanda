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
        child: orientation == Orientation.portrait ? Column(
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
        ):
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 25),
                  child: Heading(heading: "Cart",),
                ),
                Divider(
                  height: 5,
                  color: Colors.black26,
                  thickness: 2,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        txt("Item"),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: txt("Qty"),
                        ),
                        txt("Special \n Instructions"),
                        txt("Price"),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 5,
                  color: Colors.black26,
                  thickness: 2,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width/2,
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
                            Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Text("1"),
                            ),
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
                Container(
                  height: 50,
                ),
              ],
            ),
            Column(
              children: [
                landscapeRecipt("subtotal", "Rs.1024"),
                Divider(),
                landscapeRecipt("GST(16%)", "350"),
                Divider(),
                landscapeRecipt("Delivery Charges", "Rs.450"),
              ],
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

Widget recipt(title, price){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(title),
        ),
        Text(price),
      ],
    ),
  );
}

Widget landscapeRecipt(title, price){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      width: 280,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
          ),
          Text(price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
        ],
      ),
    ),
  );
}