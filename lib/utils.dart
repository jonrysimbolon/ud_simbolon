import 'package:flutter/material.dart';

var bgColor = const Color(0xFF80C764);
var cardColor = const Color(0xFF72BD55);
var textColor = const Color(0xFF9F9D9D);

void showCustomSnackBar(BuildContext context, String message,
    {Duration duration = const Duration(seconds: 1)}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: duration,
    ),
  );
}

void showAlert(String message) {
  AlertDialog(
    content: Text(message),
  );
}
