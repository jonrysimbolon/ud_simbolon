import 'package:flutter/material.dart';

const bgColor = Color(0xFF80C764);
const cardColor = Color(0xFF72BD55);
const textColor = Color(0xFF9F9D9D);

const descTextStyle = TextStyle(
    fontFamily: 'Oxygen'); // menyimpan font kedalam variable style

const titleTextStyle = TextStyle(
    fontFamily: 'Staatliches'); // menyimpan font kedalam variable style


void showCustomSnackBar(
  BuildContext context, 
  String message,
  ({TextStyle _style = titleTextStyle}),
    {Duration duration = const Duration(seconds: 1)}
    ) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: _style,
        ),
      duration: duration,
    ),
  );
}

void showAlert(
  BuildContext context, 
  String message,
  ({TextStyle _style = titleTextStyle}),
  ) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: 
        Text(
          message,
          style: _style,
          ),
      );
    },
  );
}
