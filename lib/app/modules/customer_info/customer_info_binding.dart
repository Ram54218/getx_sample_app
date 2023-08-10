import 'package:get/get.dart';
import 'package:getx_sample_app/app/modules/customer_info/customer_info_controller.dart';

class CustomerInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomerInfoController());
  }
}
