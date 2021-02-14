import 'package:flutter/material.dart';

class PrimaryAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.black,
          title: Container(
            height: 50,
            child: Image.asset('assets/images/HomeHeader.png', height: 70, fit: BoxFit.contain,),),
          centerTitle: true,
        ),
      ),
    );
  }
}
