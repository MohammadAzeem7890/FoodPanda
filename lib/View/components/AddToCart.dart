import 'package:flutter/material.dart';
import 'package:foodpanda/View/components/PrimaryLabel.dart';

// void main() => runApp(MaterialApp(
//       home: AddToCart(),
//     ));

class AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: PrimaryLabel(label: "Cart",),
            ),
            Divider(
              height: 5,
              color: Colors.black26,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                      child: txt("Item"),),
                  txt("Qty"),
                  txt("Special \n Instructions"),
                  txt("Price"),
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.black26,
              thickness: 2,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 100,
                          child: Text("double decker beef burger"),
                        ),
                        Text("1"),
                        Text(" "),
                        Text("350"),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 5,
                    color: Colors.black26,
                    thickness: 2,
                  );
                },
              ),
            )
          ],
        ),
    );
  }
}

Widget txt(txt){
  return Text(txt,
    style: TextStyle(
      fontWeight: FontWeight.bold
    ),
  );
}