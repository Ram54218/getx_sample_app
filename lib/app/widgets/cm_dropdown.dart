import 'package:flutter/material.dart';
import 'package:getx_sample_app/app/models/api_model/customer_detail_model.dart';
import 'package:getx_sample_app/app/modules/customer_info/customer_info_controller.dart';

class CmDropdown extends StatelessWidget {
  String hintText = '';
  CustomerInfoController controller = CustomerInfoController();

  CmDropdown({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      iconSize: 30.0,
      underline: Container(),
      hint: Text(hintText),
      isExpanded: true,
      value: controller.selectedRegType,
      items: controller.registrationTypeList!.map((RegistrationType data) {
        return DropdownMenuItem(
          value: data,
          alignment: Alignment.centerLeft,
          child: Text(data.name),
        );
      }).toList(),
      onChanged: (Object? value) {},
    );
  }
}
