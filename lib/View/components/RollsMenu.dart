import 'package:flutter/material.dart';
import 'package:foodpanda/View/components/ItemCard.dart';
import 'package:foodpanda/View/components/primaryTextField.dart';

class RollsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (MediaQuery.of(context).size.width/395),
                //childAspectRatio: (MediaQuery.of(context).size.width/420),
                children: List.generate(12, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PrimaryTextField()));
                      },
                        child: ItemCard(
                          imageName: 'assets/images/Item.png',
                          fit: BoxFit.fitWidth,
                          cardTitle: 'Chicken Cheese Roll',
                          cardDescription: 'mouth watering chicke cheese role with special sauce',
                          oldPrice: 400,
                          newPrice: 300,
                        )),
                  );
                })
              ),
            ),
          )
        ],
      ),
    );
  }
}
