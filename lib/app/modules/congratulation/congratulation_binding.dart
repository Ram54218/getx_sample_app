import 'package:get/get.dart';
import 'package:getx_sample_app/app/modules/congratulation/congratulation_controller.dart';

class CongratulationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CongratulationController());
  }
}
