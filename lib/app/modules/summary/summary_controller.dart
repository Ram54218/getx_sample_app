import 'package:get/get.dart';

class SummaryController extends GetxController {
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    isLoading = false;
  }
}
