import 'package:flutter/material.dart';
import 'package:foodpanda/View/Design/HomePage.dart';
import 'package:foodpanda/View/components/CheckoutScreenSheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {

  double subtotal = 0;
  double gst = 0;
  double deliveryCharges = 20;
  double total = 0;
  int itemPrice = 245;
  int itemCount = 1;
  double rateOfGST = 16;



  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double menuHeight = MediaQuery.of(context).size.height - 420;
    double checkoutHeight = MediaQuery.of(context).size.height - menuHeight;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Image.asset('assets/images/crossIcon.png')),
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: orientation == Orientation.portrait
            ? Column(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: menuHeight,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("mayo garlic roll"),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          240,
                                      height: 47,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15.0),
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.maximize_sharp,
                                                color: Colors.black,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  itemCount == 0 ? 0 : itemCount = itemCount - 1;
                                                  subtotal = subtotal == 0 ? 0 : subtotal = subtotal + itemPrice;
                                                  gst = gst == 0 ? 0 : (subtotal * rateOfGST)/100;
                                                  total = subtotal + gst + deliveryCharges;
                                                });
                                              },
                                            ),
                                          ),
                                          Text(
                                            "${itemCount}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                itemCount = itemCount + 1;
                                                subtotal =  subtotal == 0 ? subtotal + itemPrice : subtotal + itemPrice;
                                                gst =  ((subtotal * rateOfGST)/100) ;
                                                total = subtotal + gst + deliveryCharges;
                                              });
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text("Rs.${itemPrice}"),
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
                          itemCount: 20),
                    ),
                  ),
                  Expanded(
                      child: CheckoutScreenSheet(
                        gst: gst,
                        subtotal: subtotal,
                        total: total,
                  )),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 2,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("mayo garlic roll"),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          600,
                                      height:
                                          MediaQuery.of(context).size.height -
                                              310,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15.0),
                                            child: IconButton(
                                              icon: Icon(Icons.maximize_sharp),
                                              color: Colors.black,
                                              onPressed: () async {
                                                itemCount == 0 ? 0 : itemCount = itemCount - 1;
                                                subtotal = subtotal == 0 ? 0 : subtotal = subtotal + itemPrice;
                                                gst = gst == 0 ? 0 : (subtotal * rateOfGST)/100;
                                                total = subtotal + gst + deliveryCharges;
                                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                              },
                                            ),
                                          ),
                                          Text(
                                            "${itemCount}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                            onPressed: () {
                                              itemCount = itemCount + 1;
                                              subtotal =  subtotal == 0 ? subtotal + itemPrice : subtotal + itemPrice;
                                              gst =  ((subtotal * rateOfGST)/100) ;
                                              total = subtotal + gst + deliveryCharges;
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text("Rs.${itemPrice}"),
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
                          itemCount: 20),
                    ),
                  ),
                  Expanded(
                    child: CheckoutScreenSheet(
                      total: total,
                      subtotal: subtotal,
                      gst: gst,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width - 100,
                    ),
                  ),
                ],
              ));
  }
}
