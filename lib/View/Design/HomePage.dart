import 'package:flutter/material.dart';
import 'package:foodpanda/Controller/Network.dart';
import 'package:foodpanda/Model/ProductModel.dart';
import 'package:foodpanda/View/components/DealsMenu.dart';
import 'package:foodpanda/View/components/RollsMenu.dart';
import 'package:foodpanda/View/components/appBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<ProductModel> categoryList;
  int productItemIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categoryList = Network.getProducts();
  }

  final title = [
    "Rolls",
    "Pasta",
    "Burger",
    "Pizza",
    "Chinses",
    "Fast Food",
    "Mocktails & Shakes",
    "Deals",
    "Kabab",
    "Poka"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: PrimaryAppBar(),
        ),
        body: DefaultTabController(
          length: 1,
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                //constraints: BoxConstraints(maxHeight: 150),
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    indicatorColor: Colors.black38,
                    tabs: [
                      FutureBuilder<ProductModel>(
                        future: categoryList,
                        builder:
                            (context, AsyncSnapshot<ProductModel> snapshot) {
                          productItemIndex = snapshot.data.itemDetails.length;
                          if (!snapshot.hasData) {
                            return LinearProgressIndicator();
                          } else {
                            return ListView.builder(
                              itemCount: snapshot.data.itemDetails.length == null ? Center(child: CircularProgressIndicator(),): snapshot.data.itemDetails.length,
                              itemBuilder: (context, index) {
                                return Text(snapshot
                                    .data.itemDetails[index].categoryName);
                              },
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                        itemCount: productItemIndex,
                        itemBuilder: (context, index) {
                          return RollsMenu();
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
