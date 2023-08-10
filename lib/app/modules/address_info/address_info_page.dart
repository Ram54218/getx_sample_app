import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/app/modules/address_info/address_info_controller.dart';
import 'package:getx_sample_app/app/routes/app_routes.dart';
import 'package:getx_sample_app/app/widgets/cm_style.dart';
import 'package:getx_sample_app/app/widgets/cm_textField.dart';
import 'package:getx_sample_app/app/widgets/common_widget.dart';

class AddressInfoPage extends StatelessWidget {
  const AddressInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddressInfoController>(
        builder: (controller) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.green,
                ),
                body: homeWidget(controller, context),
              ),
            ));
  }

  homeWidget(AddressInfoController controller, BuildContext context) {
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
                  const Center(
                      child: Text(
                    'ADDRESS INFORMATION',
                    style: CmStyle.titleLabelTextStyle,
                  )),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Building/Lot Number', mandatory: false),
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
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Street', mandatory: false),
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
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Village/SubDivision', mandatory: false),
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
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Unit/Floor', mandatory: false),
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
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Building', mandatory: false),
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
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'State'),
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
                        value: controller.selectedState,
                        items: controller.stateList.map((data) {
                          return DropdownMenuItem(
                              value: data, child: Text(data));
                        }).toList(),
                        onChanged: (value) {
                          controller.getSelectedState(value);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'District'),
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
                        value: controller.selectedDistrict,
                        items: controller.districtList.map((data) {
                          return DropdownMenuItem(
                            value: data,
                            alignment: Alignment.centerLeft,
                            child: Text(data),
                          );
                        }).toList(),
                        onChanged: (data) {
                          controller.getSelectedDistrict(data);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(text: 'Pincode'),
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
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  const Center(
                      child: Text(
                    'ALTERNATE CONTACT INFORMATION',
                    style: CmStyle.titleLabelTextStyle,
                  )),
                  SizedBox(height: deviceHeight * 0.01),
                  const Center(
                      child: Text(
                    'We will be using this to contact you in case we need to',
                    style: CmStyle.addressInfoLabelTextStyle,
                  )),
                  const Center(
                      child: Text(
                    'further validate the information you provided.',
                    style: CmStyle.addressInfoLabelTextStyle,
                  )),
                  const Center(
                      child: Text(
                    'For landline numbers, please include the area code',
                    style: CmStyle.addressInfoLabelTextStyle,
                  )),
                  const Center(
                      child: Text(
                    'example: 0288881111.',
                    style: CmStyle.addressInfoLabelTextStyle,
                  )),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(
                    text: 'Alternate Contact Number',
                    mandatory: false,
                    optional: '(optional)',
                  ),
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
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  CmTextField(
                    text: 'Email Address',
                    mandatory: false,
                    optional: '(optional)',
                  ),
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
                            const InputDecoration(border: InputBorder.none),
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
                              Get.toNamed(AppRoutes.summary);
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
