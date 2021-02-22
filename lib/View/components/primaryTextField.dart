import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {

  TextEditingController controller = new TextEditingController();
  String placeholder;
  int maxLines;
  var validator;

  PrimaryTextField({this.placeholder, this.controller, this.maxLines, this.validator});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            validator: validator,
            maxLines: maxLines,
            decoration: new InputDecoration(
              errorBorder: new OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.5),
              ),
              focusedErrorBorder: new OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.5),
              ),
              contentPadding: const EdgeInsets.only(top: 10, left: 16, bottom: 10),
              hintText: placeholder,
                hintStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 14
                ),
                enabledBorder: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black45, width: 0.5),
                ),
              focusedBorder: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.green, width: 1),
              )
            ),
          ),
        ),
      );
  }
}
