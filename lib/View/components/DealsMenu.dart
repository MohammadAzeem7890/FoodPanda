import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/Controller/Network.dart';
import 'package:foodpanda/Model/ProductModel.dart';
import 'package:foodpanda/View/Design/CheckOutForm.dart';
import 'package:foodpanda/View/Design/CheckOutScreen.dart';
import 'package:foodpanda/View/components/ItemCard.dart';

import 'BottomSheet.dart';

class DealsMenu extends StatefulWidget {
  @override
  _DealsMenuState createState() => _DealsMenuState();
}

class _DealsMenuState extends State<DealsMenu> {
  
  Future<ItemDetails> getItemDetails;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getItemDetails = Network.getProductCategoryDetails();
  }
  
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: FutureBuilder<ItemDetails>(
                future: getItemDetails,
                builder: (context, AsyncSnapshot<ItemDetails> snapshot){
                  if(!snapshot.hasData){
                    return Center(child: CircularProgressIndicator(),);
                  }
                  else{
                    return GridView.count(
                      crossAxisCount: orientation == Orientation.landscape? 3: 2,
                      childAspectRatio: orientation == Orientation.portrait? MediaQuery.of(context).size.width / 400:
                      MediaQuery.of(context).size.width/730,
                      children: List.generate(snapshot.data.products.length, (index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckOutScreen()));
                            },
                            child: ItemCard(
                              imageName: "assets/images/Splashlogo.png",
                              fit: BoxFit.scaleDown,
                              cardTitle: snapshot.data.products[index].itemTitle,
                              cardDescription:
                              snapshot.data.products[index].itemDescription,
                              oldPrice: int.parse(snapshot.data.products[index].oldPrice),
                              newPrice: int.parse(snapshot.data.products[index].price),
                            ),
                          ),
                        );
                      }),
                    );
                  }
                },
              ),
            ),
          ),
          PrimaryBottomSheet(),
        ],
      ),
    );
  }
}
