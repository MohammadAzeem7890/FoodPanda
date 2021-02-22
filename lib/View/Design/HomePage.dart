import 'package:flutter/material.dart';
import 'package:foodpanda/Controller/Network.dart';
import 'package:foodpanda/Model/ProductModel.dart';
import 'package:foodpanda/View/components/RollsMenu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  Future<ProductModel> productModel;
  List<Products> listOfProducts;
  int selectedIndex = 0;

  int tabLength;

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    productModel = Network.getProductCategories();
    productModel.then((value) {
      value.itemDetails.forEach((element) {
        listOfProducts = element.products;
      });
      tabLength = value.itemDetails.length;
      _tabController = new TabController(vsync: this, length: tabLength);
      _tabController.addListener(() {
        setState(() {
          selectedIndex = _tabController.index;
        });
      });
    });


  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/images/HomeHeader.png',
              fit: BoxFit.cover,
              height: 55,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              color: Colors.white,
              child: FutureBuilder<ProductModel>(
                future: productModel,
                builder: (context, AsyncSnapshot<ProductModel> snapshot) {
                  if (snapshot.hasData) {
                    List<Widget> tabs = new List<Widget>();
                    for (int index = 0;
                        index < snapshot.data.itemDetails.length;
                        index++) {
                      tabs.add(Tab(
                        child:
                            Text(snapshot.data.itemDetails[index].categoryName),
                      ));
                    }
                    return TabBar(
                      labelColor: Colors.black45,
                      indicatorColor: Colors.black45,
                      indicator:
                          BoxDecoration(color: Colors.lightBlue.shade50),
                      onTap: (index) {
                        _tabController.addListener(() {
                          setState(() {
                            selectedIndex = _tabController.index;
                          });
                          print("Selected Index: " +
                              _tabController.index.toString());
                        });
                      },
                      isScrollable: true,
                      tabs: tabs,
                      controller: _tabController,
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        ),
        body: FutureBuilder<ProductModel>(
          future: productModel,
          builder: (context, AsyncSnapshot<ProductModel> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return TabBarView(
                controller: _tabController,
                children: List<Widget>.generate(
                    snapshot.data.itemDetails.length, (index) {
                  return RollsMenu.product(
                      products: snapshot.data.itemDetails[index].products);
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
