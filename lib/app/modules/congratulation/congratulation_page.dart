import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/app/modules/congratulation/congratulation_controller.dart';
import 'package:getx_sample_app/app/widgets/cm_style.dart';
import 'package:getx_sample_app/app/widgets/common_widget.dart';

class CongratulationPage extends StatelessWidget {
  const CongratulationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CongratulationController>(
        builder: (controller) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black54,
                ),
                body: homeWidget(controller, context),
              ),
            ));
  }

  homeWidget(CongratulationController controller, BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                SizedBox(height: deviceHeight * 0.15),
                const Center(
                    child: Text(
                  'CONGRATULATION',
                  style: CmStyle.titleLabelTextStyle,
                )),
                SizedBox(height: deviceHeight * 0.10),
                const Center(
                  child: Text(
                    'You have Successfully register the mobile number under our company.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.03),
                const Center(
                  child: Text(
                    'Please expect an Email or Mobile Number from us regarding the registration status of your other SIMs. ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.03),
                const Center(
                  child: Text(
                    'Control Number as been send your registered Mobile Number soon.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.08),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      onPressed: () {},
                      child: CommonWidget.buttonStyle('REGISTER ANOTHER SIM')),
                ),
              ],
            )));
  }
}
