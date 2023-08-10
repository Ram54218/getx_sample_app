import 'package:flutter/material.dart';

class CommonWidget {
  static buttonStyle(String buttonLabel) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          buttonLabel,
          style: const TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
