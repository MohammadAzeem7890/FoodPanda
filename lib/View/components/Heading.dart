import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  String heading;
  Heading({this.heading});
  @override
  Widget build(BuildContext context) {
    return Text(heading, style: TextStyle(fontSize: 23),);
  }
}
