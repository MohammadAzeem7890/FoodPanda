import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:foodpanda/Model/DeliveryZoneModel.dart';
import 'package:foodpanda/Model/ProductModel.dart';

const baseUrl = "http://cartelapi.textiledigitizing.com/api/";
class Network{

  static Future<ProductModel> getProducts()async{
    final products = Dio();
    try{
      final response = await products.get(baseUrl + "getproducts");
      //print(response.data);
      print(ProductModel.fromJson(response.data).itemDetails);

    }
    catch(error){
      print(error);
    }
  }

  static Future<DeliveryZoneModel> getDeliveryZones() async{
    final zone = Dio();
    try{
      final response = await zone.get(baseUrl + "getdeliveryzones");
      if(response.statusCode == 200){
       // print(response.data["delivery_zones"]);
        // print(jsonDecode(response.data));
       return DeliveryZoneModel.fromJson(response.data);
      }
      else{
        throw Exception("Error 404");
      }
    }
    catch(error){
      print(error);
    }
  }
}