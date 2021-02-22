import 'package:flutter/material.dart';
import 'package:foodpanda/Model/ProductModel.dart';
import 'package:foodpanda/View/Design/CheckOutScreen.dart';
import 'package:foodpanda/View/components/ItemCard.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BottomSheet.dart';

class RollsMenu extends StatefulWidget {

  List<Products> products;
  RollsMenu();
  RollsMenu.product({@required this.products});


  @override
  _RollsMenuState createState() => _RollsMenuState(products);
}

class _RollsMenuState extends State<RollsMenu> {

  List<Products> products;
  _RollsMenuState(this.products);

  Future<ItemDetails> getItemDetails;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var orienation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount:
                orienation == Orientation.landscape ? 3 : 2,
                childAspectRatio: orienation == Orientation.portrait
                    ? MediaQuery.of(context).size.width / 400
                    : MediaQuery.of(context).size.width / 730,
                children:
                List.generate(products.length, (index) {
                  // List<Products> item = snapshot.data.products;
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: () async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString("shopId", products[index].shopId);
                        prefs.setString("itemTitle", products[index].itemTitle);
                        prefs.setString("itemPrice", products[index].price);
                        prefs.setString("categoryId", products[index].categoryId);
                        prefs.setInt("itemId", products[index].itemId);

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CheckOutScreen()));
                      },
                      child: ItemCard(
                        imageName: products[index].itemImagePath + products[index].itemImageName,
                        fit: BoxFit.fill,
                        cardTitle:
                        products[index].itemTitle,
                        cardDescription:
                        products[index].itemDescription,
                        oldPrice:
                        int.parse(products[index].oldPrice),
                        newPrice: int.parse(products[index].price),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          PrimaryBottomSheet(),
        ],
      ),
    );
  }
}
