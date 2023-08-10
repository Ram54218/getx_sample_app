import 'package:flutter/material.dart';

class CmTextFormField extends StatefulWidget {
  TextInputType? textInputType;
  String? hintText;
  Widget? prefixIcon;
  String? defaultText;
  FocusNode? focusNode;
  bool? obscureText;
  TextEditingController? controller;
  TextInputAction? actionKeyboard;
  Color? bgColor;
  Color? textColor;

  CmTextFormField(
      {super.key,
      this.textInputType,
      this.hintText,
      this.prefixIcon,
      this.defaultText,
      this.focusNode,
      this.obscureText,
      this.controller,
      this.actionKeyboard,
      this.bgColor,
      this.textColor});

  @override
  State<CmTextFormField> createState() => _CmTextFormFieldState();
}

class _CmTextFormFieldState extends State<CmTextFormField> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 35,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.blue),
            child: TextFormField(
              cursorColor: Colors.blue,
              style: TextStyle(
                color: widget.textColor ?? Colors.white12,
                fontSize: 16.0,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.normal,
                letterSpacing: 1.2,
              ),
              initialValue: widget.defaultText,
              decoration: InputDecoration(
                hintText: widget.hintText,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.bgColor ?? Colors.grey),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.0,
                ),
                contentPadding: EdgeInsets.only(
                    top: 12,
                    bottom: bottomPaddingToError,
                    left: 8.0,
                    right: 8.0),
                isDense: true,
                errorStyle: const TextStyle(
                  color: Colors.red,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.2,
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              validator: (value) {},
              onFieldSubmitted: (value) {},
              onTap: () {},
            )),
      ),
    );
  }
}

String commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  return required;
}

String requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return "null";
}

void changeFocus(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
