import 'package:flutter/material.dart';
import 'package:foodpanda/View/components/PrimaryLabel.dart';
import 'package:foodpanda/View/components/appBar.dart';
import 'package:foodpanda/View/components/primaryTextField.dart';

void main() => runApp(MaterialApp(
      home: CheckOutForm(),
    ));

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: PrimaryAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Text(
                "Checkout Form",
                style: TextStyle(fontSize: 23),
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
              placeholder:
                  "Please Enter Order Instructions/                          "
                  "Note to rider",
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
