import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/app/constant.dart';
import 'package:getx_sample_app/app/modules/summary/summary_controller.dart';
import 'package:getx_sample_app/app/routes/app_routes.dart';
import 'package:getx_sample_app/app/widgets/cm_style.dart';
import 'package:getx_sample_app/app/widgets/cm_textfield.dart';
import 'package:getx_sample_app/app/widgets/common_widget.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummaryController>(
        builder: (controller) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.green,
                ),
                body: homeWidget(controller, context),
              ),
            ));
  }

  homeWidget(SummaryController controller, BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    //var deviceWidth = MediaQuery.of(context).size.width;
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
                    'SUMMARY',
                    style: CmStyle.titleLabelTextStyle,
                  )),
                  SizedBox(height: deviceHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CmTextField(
                                text: 'Mobile Number', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: 'Serial Number', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'Nationality', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'ID Card', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'Visa Type', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'ID Number', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'First Name', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'Middle Name', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'Last Name', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'BirthDay', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(text: 'Sex', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: 'Alternate Contact Number',
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: 'Email Address', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CmTextField(text: "9897579759", mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: '9874364579809', mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedNationality ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedIdCard ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedVisaType ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedIdNumber ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedFirstName ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedMiddleName ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedLastName ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedBirthday ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedSex ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedBirthday ?? "",
                                mandatory: false),
                            SizedBox(height: deviceHeight * 0.01),
                            CmTextField(
                                text: Constant.selectedBirthday ?? "",
                                mandatory: false),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0, right: 15.0),
                        child: Expanded(
                          flex: 2,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFe0e0e0)),
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'I Understand that I may be requested via my active email address and mobile number during its verification process to submit the additional requirements to check our company.',
                          style: CmStyle.informationLabelTextStyle,
                        ),
                      ),
                    ],
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
                              Get.toNamed(AppRoutes.congratulation);
                            },
                            child: CommonWidget.buttonStyle('SUBMIT')),
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
