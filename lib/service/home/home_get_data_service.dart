import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/api_const.dart';
import 'package:flutter/material.dart';

class HomeGetDataService {
  static Future getData() async {
    final api = "${ApiConst().api}654bd15e-b121-49ba-a588-960956b15175";
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
