import 'package:flutter/material.dart';

const bgColor = Color(0xFF80C764);
const cardColor = Color(0xFF72BD55);
const textColor = Color(0xFF9F9D9D);

var descTextStyle =
    getTextStyle('Oxygen'); // menyimpan font kedalam variable style
var titleTextStyle =
    getTextStyle('Staatliches'); // menyimpan font kedalam variable style

TextStyle getTextStyle(String textStyle) {
  return TextStyle(fontFamily: textStyle);
}

void showCustomSnackBar(
  BuildContext context,
  String message, {
  String style = 'Staatliches',
  Duration duration = const Duration(seconds: 1),
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontFamily: 'Oxygen'),
      ),
      duration: duration,
    ),
  );
}

void showAlert(
  BuildContext context,
  String message, {
  String style = 'Staatliches',
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text(
          message,
          style: TextStyle(fontFamily: style),
        ),
      );
    },
  );
}
