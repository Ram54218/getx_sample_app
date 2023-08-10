import 'package:get/get.dart';
import 'package:getx_sample_app/app/modules/summary/summary_controller.dart';

class SummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SummaryController());
  }
}
