import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  Function onPressed;
  String title;

  PrimaryButton({this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      height: 46,
      width: orientation == Orientation.portrait? MediaQuery.of(context).size.width-270:
      MediaQuery.of(context).size.width - 600,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: onPressed,
        child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
