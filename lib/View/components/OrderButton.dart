import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {

  String title;
  String title1;
  Function onPressed;
  OrderButton({this.title,this.title1, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: new BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: RaisedButton(
        color: Colors.blue[500],
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
            Text(title1, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
