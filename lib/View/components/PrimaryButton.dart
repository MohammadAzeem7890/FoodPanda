import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  Function onPressed;
  String title;

  PrimaryButton({this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: MediaQuery.of(context).size.width-270,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: onPressed,
        child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
