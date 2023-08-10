import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_sample_app/app/modules/address_info/address_info_binding.dart';
import 'package:getx_sample_app/app/modules/address_info/address_info_page.dart';
import 'package:getx_sample_app/app/modules/congratulation/congratulation_binding.dart';
import 'package:getx_sample_app/app/modules/congratulation/congratulation_page.dart';
import 'package:getx_sample_app/app/modules/customer_info/customer_info_binding.dart';
import 'package:getx_sample_app/app/modules/customer_info/customer_info_page.dart';
import 'package:getx_sample_app/app/modules/summary/summary_binding.dart';
import 'package:getx_sample_app/app/modules/summary/summary_page.dart';

class AppRoutes {
  static const customerInfo = '/customerInfo';
  static const addressInfo = '/addressInfo';
  static const summary = '/summary';
  static const congratulation = '/congratulation';

  static final List<GetPage> pages = [
    GetPage(
        name: customerInfo,
        page: () => const CustomerInfoPage(),
        binding: CustomerInfoBinding()),
    GetPage(
        name: addressInfo,
        page: () => const AddressInfoPage(),
        binding: AddressInfoBindings()),
    GetPage(
        name: summary,
        page: () => const SummaryPage(),
        binding: SummaryBinding()),
    GetPage(
        name: congratulation,
        page: () => const CongratulationPage(),
        binding: CongratulationBinding())
  ];
}
