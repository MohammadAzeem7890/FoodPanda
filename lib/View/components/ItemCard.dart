import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  @override
  String imageName;
  String cardTitle;
  String cardDescription;
  int oldPrice;
  int newPrice;
  var fit;

  ItemCard(
      {this.imageName,
      this.cardTitle,
      this.cardDescription,
      this.oldPrice,
      this.newPrice,
      this.fit});

  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(imageName, fit: fit),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 15),
              child: Text(cardTitle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Text(
                cardDescription,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rs." + oldPrice.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      "Rs." + newPrice.toString(),
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 15,
                    color: Colors.black,
                    child: Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
