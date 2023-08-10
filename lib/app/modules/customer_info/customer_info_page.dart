import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/app/models/api_model/customer_detail_model.dart';
import 'package:getx_sample_app/app/modules/customer_info/customer_info_controller.dart';
import 'package:getx_sample_app/app/routes/app_routes.dart';
import 'package:getx_sample_app/app/widgets/cm_style.dart';
import 'package:getx_sample_app/app/widgets/common_widget.dart';
import '../../widgets/cm_textField.dart';

class CustomerInfoPage extends StatelessWidget {
  const CustomerInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerInfoController>(
        builder: (controller) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.green,
                ),
                body: homeWidget(controller, context),
              ),
            ));
  }

  homeWidget(CustomerInfoController controller, BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return controller.isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CmTextField(text: 'Type of Registration'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: DropdownButton(
                        iconSize: 30.0,
                        focusColor: Colors.white,
                        underline: Container(),
                        hint: const Text("Please Select"),
                        isExpanded: true,
                        value: controller.selectedRegType,
                        items: controller.registrationTypeList!
                            .map((RegistrationType data) {
                          return DropdownMenuItem(
                            value: data,
                            alignment: Alignment.centerLeft,
                            child: Text(data.name),
                          );
                        }).toList(),
                        onChanged: (RegistrationType? data) {
                          controller.getSelectedRegType(data);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.04),
                  const Center(
                      child: Text(
                    'CUSTOMER INFORMATION',
                    style: CmStyle.titleLabelTextStyle,
                  )),
                  SizedBox(height: deviceHeight * 0.04),
                  CmTextField(text: 'Nationality'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: DropdownButton(
                        iconSize: 30.0,
                        underline: Container(),
                        hint: const Text("Please Select"),
                        isExpanded: true,
                        value: controller.selectedNationality,
                        items:
                            controller.nationalityList!.map((Nationality data) {
                          return DropdownMenuItem(
                            value: data,
                            alignment: Alignment.centerLeft,
                            child: Text(data.name),
                          );
                        }).toList(),
                        onChanged: (Nationality? data) {
                          controller.getSelectedNationality(data);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'ID Card'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: DropdownButton(
                        iconSize: 30.0,
                        underline: Container(),
                        hint: const Text("Please Select"),
                        isExpanded: true,
                        value: controller.selectedIdType,
                        items: controller.idTypeList!.map((IdType data) {
                          return DropdownMenuItem(
                            value: data,
                            alignment: Alignment.centerLeft,
                            child: Text(data.name),
                          );
                        }).toList(),
                        onChanged: (IdType? data) {
                          controller.getSelectedIdType(data);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Visa Type'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: DropdownButton(
                        iconSize: 30.0,
                        underline: Container(),
                        hint: const Text("Please Select"),
                        isExpanded: true,
                        value: controller.selectedVisaType,
                        items: controller.visaTypeList!.map((VisaType data) {
                          return DropdownMenuItem(
                            value: data,
                            alignment: Alignment.centerLeft,
                            child: Text(data.name),
                          );
                        }).toList(),
                        onChanged: (VisaType? data) {
                          controller.getSelectedVisaType(data);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  Row(
                    children: [
                      CmTextField(text: 'ID Card Verification'),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                'Take Photo',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CmTextField(text: 'Upload Valid ID'),
                      const Text(
                          'Max of 5MB. Accepted File Types: .jpg .jpeg .gif .pdf .png',
                          style: CmStyle.informationLabelTextStyle),
                      const Text('filename',
                          style: CmStyle.informationLabelTextStyle),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(
                              'Upload',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CmTextField(text: 'Upload Valid Selfie'),
                        ],
                      ),
                      const Text(
                          'Max of 5MB. Accepted File Types: .jpg .jpeg .gif .pdf .png',
                          style: CmStyle.informationLabelTextStyle),
                      const Text('filename',
                          style: CmStyle.informationLabelTextStyle),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.green,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(
                              'Upload',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'ID Card Number'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: TextFormField(
                        controller: controller.idCardController,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'First Name'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                        decoration:
                            const InputDecoration(border: InputBorder.none)),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Middle Name'),
                  SizedBox(height: deviceHeight * 0.01),
                  Row(children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFe0e0e0)),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    const SizedBox(width: 20.0),
                    const Text('I have no legal middle name',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff212529),
                            fontWeight: FontWeight.normal)),
                  ]),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: TextFormField(
                          decoration:
                              const InputDecoration(border: InputBorder.none)),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Last Name'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: TextFormField(
                          decoration:
                              const InputDecoration(border: InputBorder.none)),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Birthday'),
                  SizedBox(height: deviceHeight * 0.01),
                  DropdownDatePicker(
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                    ),
                    boxDecoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    inputDecoration: const InputDecoration(
                        focusColor: Colors.white, border: InputBorder.none),
                    startYear: 1900,
                    hintDay: 'DD',
                    hintMonth: 'MM',
                    hintYear: 'YYYY',
                    dayFlex: 2,
                    monthFlex: 2,
                    yearFlex: 2,
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Sex'),
                  SizedBox(height: deviceHeight * 0.01),
                  Container(
                    width: deviceWidth * 1,
                    height: deviceHeight * 0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFe0e0e0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: DropdownButton(
                        iconSize: 30.0,
                        underline: Container(),
                        hint: const Text("Please Select"),
                        isExpanded: true,
                        value: controller.selectedGender,
                        items: controller.genderList!.map((Gender data) {
                          return DropdownMenuItem(
                            value: data,
                            alignment: Alignment.centerLeft,
                            child: Text(data.name),
                          );
                        }).toList(),
                        onChanged: (Gender? data) {
                          controller.getSelectedGender(data);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {},
                            child: CommonWidget.buttonStyle('BACK')),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {
                              Get.toNamed(AppRoutes.addressInfo);
                            },
                            child: CommonWidget.buttonStyle('NEXT')),
                      )
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.04),
                ],
              ),
            ),
          );
  }
}
