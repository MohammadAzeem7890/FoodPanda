import 'package:shared_preferences/shared_preferences.dart';

class AddToCart{
  // String categoryId;
  // String shopId;
  // String itemName;
  // String itemPrice;
  // String selectedZone;
  // int itemId;
  //
  // AddToCart({this.categoryId, this.itemId, this.shopId, this.selectedZone, this.itemName, this.itemPrice});


  static getCartItems() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getInt("itemId");
    prefs.getString("categoryId");
    prefs.getString("shopId");
    prefs.getString("itemName");
    prefs.getString("itemPrice");
    prefs.getString("selectedZone");
  }

}