import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_sample_app/app/modules/customer_info/customer_info_binding.dart';
import 'package:getx_sample_app/app/modules/customer_info/customer_info_page.dart';
import 'package:getx_sample_app/app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Basic StateManagement',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialBinding: CustomerInfoBinding(),
      home: const CustomerInfoPage(),
      getPages: AppRoutes.pages,
    );
  }
}
