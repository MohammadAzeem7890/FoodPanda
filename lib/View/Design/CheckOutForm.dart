
import 'package:flutter/material.dart';
import 'package:foodpanda/View/Design/HomePage.dart';
import 'package:foodpanda/View/components/AddToCart.dart';
import 'package:foodpanda/View/components/BottomSheet.dart';
import 'package:foodpanda/View/components/Heading.dart';
import 'package:foodpanda/View/components/OrderButton.dart';
import 'package:foodpanda/View/components/PrimaryButton.dart';
import 'package:foodpanda/View/components/PrimaryLabel.dart';
import 'package:foodpanda/View/components/appBar.dart';
import 'package:foodpanda/View/components/primaryTextField.dart';

class CheckOutForm extends StatefulWidget {
  @override
  _CheckOutFormState createState() => _CheckOutFormState();
}

class _CheckOutFormState extends State<CheckOutForm> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController mobileNumber = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController otherInstructions = new TextEditingController();
  TextEditingController area = new TextEditingController();
  TextEditingController couponCode = new TextEditingController();

  Color btnColor = new Color(0xff303BD8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: PrimaryAppBar(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 100,
            right: 10,
            child: FloatingActionButton(
                backgroundColor: Colors.blue[600],
                child: Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  child: Heading(
                    heading: "Checkout Form",
                  ),
                ),
                PrimaryLabel(
                  label: "First Name",
                ),
                PrimaryTextField(
                  controller: firstName,
                  placeholder: "Please Enter First Name",
                ),
                PrimaryLabel(
                  label: "Last Name",
                ),
                PrimaryTextField(
                  controller: lastName,
                  placeholder: "Please Enter Last Name",
                ),
                PrimaryLabel(
                  label: "Email",
                ),
                PrimaryTextField(
                  controller: email,
                  placeholder: "Please Enter Email",
                ),
                PrimaryLabel(
                  label: "Mobile Number",
                ),
                PrimaryTextField(
                  controller: mobileNumber,
                  placeholder: "03XXXXXXXXX",
                ),
                PrimaryLabel(
                  label: "Address",
                ),
                PrimaryTextField(
                  controller: area,
                  placeholder: "Please Select Delivery Area",
                ),
                PrimaryLabel(
                  label: "Area",
                ),
                PrimaryTextField(
                  controller: address,
                  placeholder: "Please Enter Street Address",
                ),
                PrimaryLabel(
                  label: "Order Instructions/ Note to rider",
                ),
                PrimaryTextField(
                  controller: otherInstructions,
                  placeholder: "Please Enter Order Instructions/\n"
                      "Note to rider",
                  maxLines: 2,
                ),
                AddToCart(),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Heading(
                        heading: "Coupon",
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 46,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 120,
                        child: TextField(
                          decoration: new InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            hintText: "Please Enter Coupon Code",
                            hintStyle: TextStyle(color: Colors.black54),
                            enabledBorder: new OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black45),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      PrimaryButton(
                        onPressed: () {},
                        title: "Apply",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 20),
                  child: OrderButton(
                    title: "Confirm Order",
                    title1: "Total: Rs. 0000",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
