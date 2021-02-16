import 'package:flutter/material.dart';
import 'package:foodpanda/View/Design/HomePage.dart';
import 'package:foodpanda/View/components/CheckoutScreenSheet.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double menuHeight = MediaQuery.of(context).size.height - 420;
    double checkoutHeight = MediaQuery.of(context).size.height - menuHeight;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
          },
            child: Image.asset('assets/images/crossIcon.png')),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: orientation == Orientation.portrait? Column(
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
      ):
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width/2,
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
                                  width: MediaQuery.of(context).size.width - 660,
                                  height: MediaQuery.of(context).size.height - 310,
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
              Expanded(
                child: CheckoutScreenSheet(height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width - 100,),
              ),
            ],
          )
    );
  }
}
