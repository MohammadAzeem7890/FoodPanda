import 'package:flutter/material.dart';

class PrimaryLabel extends StatelessWidget {

  final String label;
  PrimaryLabel({this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 5),
      child: Text(label, style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),),
    );
  }
}
