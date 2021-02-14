import 'package:flutter/material.dart';
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
            Text("Checkout Form"),
            Text("First Name"),
            PrimaryTextField(
              controller: firstName,
              placeholder: "First Name",
            ),
          ],
        ),
      ),
    );
  }
}
