import 'package:form_validator/form_validator.dart';
import 'package:flutter/material.dart';

import 'package:foodpanda/View/Design/UpdateDealSheet.dart';
import 'package:foodpanda/View/components/AddToCart.dart';

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

  GlobalKey<FormState> key = GlobalKey<FormState>();
  void validate() {
    key.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
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
            child: Form(
              autovalidate: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 15),
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
                    validator: ValidationBuilder()
                        .required("First Name is Required")
                        .minLength(
                            3, "First Name must be alteast 3 letters long")
                        .minLength(
                            10,
                            "First Name should be maximum 10 "
                            "letters longs").build(),
                  ),
                  PrimaryLabel(
                    label: "Last Name",
                  ),
                  PrimaryTextField(
                    controller: lastName,
                    placeholder: "Please Enter Last Name",
                    validator: ValidationBuilder()
                        .required("Last Name is Required")
                        .minLength(
                            3, "First Name must be alteast 3 letters long")
                        .maxLength(10, "First Name should be maximum 10 ").build(),
                  ),
                  PrimaryLabel(
                    label: "Email",
                  ),
                  PrimaryTextField(
                    controller: email,
                    placeholder: "Please Enter Email",
                    validator: ValidationBuilder()
                        .required("Email is required")
                        .minLength(
                            3, "Email must be alteast 3 letters long")
                        .maxLength(
                            10,
                            "Email"
                            "should be maximum 10 ")
                        .email("Please Enter Valid Email").build(),
                  ),
                  PrimaryLabel(
                    label: "Mobile Number",
                  ),
                  PrimaryTextField(
                    controller: mobileNumber,
                    placeholder: "03XXXXXXXXX",
                    validator: ValidationBuilder()
                        .required("Mobile Number is required")
                        .phone("Please Enter a Valid Phone Number").build(),
                  ),
                  PrimaryLabel(
                    label: "Area",
                  ),
                  PrimaryTextField(
                    controller: area,
                    placeholder: "Please Select Delivery Area",
                  ),
                  PrimaryLabel(
                    label: "Address",
                  ),
                  PrimaryTextField(
                    controller: address,
                    placeholder: "Please Enter Street Address",
                    validator: ValidationBuilder()
                        .required("Address is required")
                        .minLength(
                            7, "Address must be alteast 3 letters long").build(),
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
                          width: orientation == Orientation.portrait
                              ? MediaQuery.of(context).size.width - 120
                              : MediaQuery.of(context).size.width - 160,
                          child: TextFormField(
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
                      onPressed: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return UpdateDealSheet();
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
