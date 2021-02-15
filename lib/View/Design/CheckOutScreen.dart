import 'package:flutter/material.dart';
import 'package:foodpanda/View/components/CheckoutScreenSheet.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {

  @override
  Widget build(BuildContext context) {
    double menuHeight = MediaQuery.of(context).size.height - 450;
    double checkoutHeight = MediaQuery.of(context).size.height - menuHeight;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/crossIcon.png'),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              height: menuHeight,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("mayo garlic roll"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 80,
                              height: 47,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Icon(
                                      Icons.maximize_sharp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text("Rs. 350"),
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
          Expanded(child: CheckoutScreenSheet(height: checkoutHeight,)),
        ],
      ),
    );
  }
}
