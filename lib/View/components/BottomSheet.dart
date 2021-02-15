import 'package:flutter/material.dart';

class PrimaryBottomSheet extends StatefulWidget {
  @override
  _PrimaryBottomSheetState createState() => _PrimaryBottomSheetState();
}

class _PrimaryBottomSheetState extends State<PrimaryBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.white54,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.badge, color: Colors.black,),
            Text("View Cart"),
            Text("Rs.0.0"),
          ],
        ),
      ),
    );
  }
}
