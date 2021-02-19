import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:foodpanda/Model/AddOrderModel.dart';
import 'package:foodpanda/Model/DeliveryZoneModel.dart';
import 'package:foodpanda/Model/ProductModel.dart';
import 'package:http/http.dart' as http;


const baseUrl = "http://cartelapi.textiledigitizing.com/api/";
class Network{


  static Future<ItemDetails> getProductCategoryDetails() async{
    final productDetails = Dio();
    try{
      final response = await productDetails.get(baseUrl + "getproducts");
      return ProductModel.fromJson(response.data).itemDetails[1];
      print(response.data);
    }
    catch(error){
      print(error);
    }
  }

  static Future<ProductModel> getProductCategories()async{
    final productCategory = Dio();
    try{
      final response = await productCategory.get(baseUrl + "getproducts");
      //print(response.data);
      return response.data;
      //print(ProductModel.fromJson(response.data).itemDetails[1].products[1].price);
      //print(ProductModel.fromJson(response.data));

    }
    catch(error){
      print(error);
    }
  }

  static Future<AddOrdersModel> addOrders(AddOrdersModel addOrdersModel) async{
    final addOrder = Dio();
    FormData data = FormData.fromMap({
      "delivery_zone_id":
          addOrdersModel.deliveryZoneId,
      "coupon_id":
          addOrdersModel.couponId,
      "first_name":
          addOrdersModel.firstName,
      "last_name":
          addOrdersModel.lastName,
      "email":
          addOrdersModel.email,
      "address":
          addOrdersModel.address,
      "contact_number":
          addOrdersModel.contactNumber,
      "order_instruction":
          addOrdersModel.orderInstructions,
      "grand_total":
          addOrdersModel.grandTotal,
      "coupon_discount":
          addOrdersModel.couponDiscount,
      "delivery_charges":
          addOrdersModel.deliveryCharges,
      "order_status":
          addOrdersModel.orderStatus,
      "meta_data":
          addOrdersModel.metaData,
      "shop_id":
          addOrdersModel.shopId
    });
    try{
      final response = await addOrder.post(baseUrl + "addorders",
        data: data,
        options: Options(
          method: 'POST',
        ),
      );
      if(response.statusCode == 200 || response.statusCode == 500){
        print(response.data);
      }else{
        throw Exception("Order Failed");
      }
    }
    catch(error){
      print(error);
    }
  }

  static Future<AddOrdersModel> signUp(AddOrdersModel addOrdersModel) async {
    final response = await http.post(baseUrl + "addorders",
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<dynamic, dynamic>{
        "delivery_zone_id": addOrdersModel.deliveryZoneId,
        "coupon_id": addOrdersModel.couponId,
        "first_name": addOrdersModel.firstName,
        "last_name": addOrdersModel.lastName,
        "email": addOrdersModel.email,
        "address": addOrdersModel.address,
        "contact_number": addOrdersModel.contactNumber,
        "order_instruction": addOrdersModel.orderInstructions,
        "grand_total": addOrdersModel.grandTotal,
        "coupon_discount": addOrdersModel.couponDiscount,
        "delivery_charges": addOrdersModel.deliveryCharges,
        "order_status": addOrdersModel.orderStatus,
        "meta_data": addOrdersModel.metaData,
        "shop_id": addOrdersModel.shopId
      }),
    );
    if(response.statusCode == 200){
      print(jsonDecode(response.body));
      print('dat');
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