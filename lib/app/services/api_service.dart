import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class ApiService {
  final dio = Dio(BaseOptions(baseUrl: "https://stg1.simreg.smart.com.ph"));

  /*Future<dynamic> getCustomerDetails() async {
    final response = await dio.get('/assets/data/lov.json');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      final String responseData =
          await rootBundle.loadString('assets/data/customer_data.json');
      return await json.decode(responseData);
    }
  }*/

  Future<dynamic> getCustomerDetails() async {
    final String responseData =
        await rootBundle.loadString('assets/data/customer_data.json');
    return await json.decode(responseData);
  }

  Future<dynamic> getAddressDetails() async {
    var response = await rootBundle.loadString('assets/data/stateList.json');
    return await json.decode(response);
  }
}
