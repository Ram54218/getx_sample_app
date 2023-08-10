import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/app/Services/api_service.dart';
import 'package:getx_sample_app/app/constant.dart';
import 'package:getx_sample_app/app/models/api_model/customer_detail_model.dart';

class CustomerInfoController extends GetxController {
  ApiService apiService = ApiService();
  CustomerModel customerData = CustomerModel();
  bool isLoading = true;

  List<RegistrationType>? registrationTypeList;
  List<Nationality>? nationalityList;
  List<IdType>? idTypeList;
  List<Gender>? genderList;
  List<VisaType>? visaTypeList;

  RegistrationType? selectedRegType;
  Nationality? selectedNationality;
  IdType? selectedIdType;
  Gender? selectedGender;
  VisaType? selectedVisaType;
  TextEditingController? idCardController;
  String? idCardNumber;

  @override
  void onInit() {
    super.onInit();
    fetchCustomerList();
  }

  void fetchCustomerList() async {
    var response = await apiService.getCustomerDetails();
    if (response != null) {
      customerData = CustomerModel.fromJson(response);
      registrationTypeList = customerData.registrationType;
      nationalityList = customerData.nationality;
      idTypeList = customerData.idType;
      genderList = customerData.gender;
      visaTypeList = customerData.visaType;

      isLoading = false;
      update();
    }
  }

  void getSelectedRegType(RegistrationType? data) {
    selectedRegType = data;
    Constant.selectedRegType = data!.name;
    update();
  }

  void getSelectedNationality(Nationality? data) {
    selectedNationality = data;
    Constant.selectedNationality = data!.name;
    update();
  }

  void getSelectedIdType(IdType? data) {
    selectedIdType = data;
    Constant.selectedIdCard = data!.name;
    update();
  }

  void getSelectedGender(Gender? data) {
    selectedGender = data;
    Constant.selectedSex = data!.name;
    update();
  }

  void getSelectedVisaType(VisaType? data) {
    selectedVisaType = data;
    Constant.selectedVisaType = data!.name;
    update();
  }
}
