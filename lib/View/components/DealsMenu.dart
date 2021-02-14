import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/View/Design/CheckOutForm.dart';
import 'package:foodpanda/View/components/ItemCard.dart';

class DealsMenu extends StatefulWidget {
  @override
  _DealsMenuState createState() => _DealsMenuState();
}

class _DealsMenuState extends State<DealsMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width / 390,
                children: List.generate(12, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: () {
                      },
                      child: ItemCard(
                        imageName: "assets/images/Splash logo.png" == null ? CircularProgressIndicator(): 'assets/images/Splash logo.png',
                        fit: BoxFit.scaleDown,
                        cardTitle: "Chicken Cheese Roll",
                        cardDescription:
                        "mouth watering chicken cheese roll with special sauce",
                        oldPrice: 400,
                        newPrice: 300,
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
