import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {

  TextEditingController controller = new TextEditingController();
  String placeholder;

  PrimaryTextField({this.placeholder, this.controller});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width,
          child: TextField(
            decoration: new InputDecoration(
              contentPadding: const EdgeInsets.only(top: 8, left: 20),
              hintText: placeholder,
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black45, width: 0.5),
                ),
              focusedBorder: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black, width: 1),
              )
            ),
          ),
        ),
      );
  }
}
