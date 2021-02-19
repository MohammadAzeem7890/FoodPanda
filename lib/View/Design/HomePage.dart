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
  Future<ItemDetails> categoryList;


  List<Widget> titles;

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
    "Poka",
    "Fast Food",
    "Mocktails & Shakes",
    "Deals",
    "Kabab",
    "Poka"
  ];

  List<Widget> tabs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categoryList = Network.getProductCategoryDetails();
    categoryList.then((value) {
      tabs.add(Text(value.categoryName[0]));
      tabs.add(Text(value.categoryName[1]));tabs.add(Text(value.categoryName[2]));tabs.add(Text(value.categoryName[3]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: PrimaryAppBar(),
        ),
        body: DefaultTabController(
          length: tabs.length,
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
                    tabs: tabs,
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    RollsMenu(),
                    DealsMenu(),
                    RollsMenu(),
                    DealsMenu(),
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
