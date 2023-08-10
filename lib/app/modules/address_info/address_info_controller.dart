import 'package:get/get.dart';
import 'package:getx_sample_app/app/services/api_service.dart';

import '../../models/api_model/state_model.dart';

class AddressInfoController extends GetxController {
  ApiService apiService = ApiService();
  StateData stateData = StateData();
  bool isLoading = true;
  List<String> districtList = [];
  List<String> stateList = [];
  String selectedState = "";
  String selectedDistrict = "";

  @override
  void onInit() {
    super.onInit();
    getAddressInfoDetails();
  }

  void getAddressInfoDetails() async {
    var response = await apiService.getAddressDetails();
    stateData = StateData.fromJson(response);
    for (int i = 0; i < stateData.states!.length; i++) {
      String state = stateData.states![i].state;
      stateList.add(state);
    }
    districtList = stateData.states![0].districts;
    selectedState = stateList[0];
    selectedDistrict = stateData.states![0].districts[0];
    isLoading = false;
    update();
  }

  void getSelectedState(String? state) {
    for (int i = 0; i < stateData.states!.length; i++) {
      if (stateData.states![i].state == state) {
        districtList = stateData.states![i].districts;
        selectedState = state!;
        selectedDistrict = districtList[0];
        update();
        return;
      }
    }
  }

  void getSelectedDistrict(String? district) {
    selectedDistrict = district!;
    update();
  }
}
