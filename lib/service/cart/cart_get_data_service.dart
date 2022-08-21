import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/api_const.dart';
import 'package:ecommerce/models/cart/cart_model.dart';
import 'package:flutter/material.dart';

class CartGetDataService {
  static Future<CartModel> getData() async {
    final api = "${ApiConst().api}53539a72-3c5f-4f30-bbb1-6ca10d42c149";
    Dio dio = Dio(BaseOptions(validateStatus: (status) => true));
    try {
      Response res = await dio.get(api);
      if (res.statusCode == 200) {
        return CartModel.fromJson(res.data);
      } else {
        debugPrint("Internet Server Error");
        return res.data;
      }
    } catch (e) {
      rethrow;
    }
  }
}
