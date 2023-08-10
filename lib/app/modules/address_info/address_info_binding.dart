import 'package:get/get.dart';
import 'package:getx_sample_app/app/modules/address_info/address_info_controller.dart';

class AddressInfoBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressInfoController());
  }
}
