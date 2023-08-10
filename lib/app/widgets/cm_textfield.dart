import 'package:flutter/material.dart';

class CmTextField extends StatefulWidget {
  String text;
  bool mandatory;
  String optional;

  CmTextField(
      {super.key,
      required this.text,
      this.mandatory = true,
      this.optional = ""});

  @override
  State<CmTextField> createState() => _CmTextFieldState();
}

class _CmTextFieldState extends State<CmTextField> {
  @override
  Widget build(BuildContext context) {
    return widget.mandatory
        ? SizedBox(
            child: Row(
              children: [
                Text(
                  widget.text,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(
                  width: 1.0,
                ),
                const Text(
                  "*",
                  style: TextStyle(color: Colors.deepOrange),
                )
              ],
            ),
          )
        : SizedBox(
            child: Row(
              children: [
                Text(widget.text),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                Text(
                  widget.optional,
                  style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                )
              ],
            ),
          );
  }
}
