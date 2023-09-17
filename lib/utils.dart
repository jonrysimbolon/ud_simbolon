import 'package:flutter/material.dart';

const bgColor = Color(0xFF80C764);
const cardColor = Color(0xFF72BD55);
const textColor = Color(0xFF9F9D9D);

void showCustomSnackBar(BuildContext context, String message,
    {Duration duration = const Duration(seconds: 1)}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: duration,
    ),
  );
}

void showAlert(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text(message),
      );
    },
  );
}
