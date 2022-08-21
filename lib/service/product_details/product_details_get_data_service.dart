import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/api_const.dart';
import 'package:flutter/material.dart';

class ProductDetailsGetDataService {
  Future getData() async {
    final api = "${ApiConst().api}6c14c560-15c6-4248-b9d2-b4508df7d4f5";
    Dio dio = Dio(BaseOptions(validateStatus: (status) => true));
    try {
      Response res = await dio.get(api);
      if (res.statusCode == 200) {
        return res.data;
      } else {
        debugPrint("Internet Server Error");
      }
    } catch (e) {
      rethrow;
    }
  }
}
