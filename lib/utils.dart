import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const bgColor = Color(0xFF80C764);
const cardColor = Color(0xFF72BD55);
var cardColorForBackgroundIcon = cardColor.withOpacity(0.7);
const textColor = Color(0xFF9F9D9D);
const labelColor = Color(0xFFD4D4D4);
const welcomeColor = Color(0xFF22361B);

const fontTitleStr = 'Staatliches';
const fontDescStr = 'Oxygen';

String changeToRupiah(num data) => CurrencyFormat.convertToIdr(data, 2);

class CurrencyFormat {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}

void showCustomSnackBar(
  BuildContext context,
  String message, {
  String style = fontTitleStr,
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
  String style = fontTitleStr,
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

void showAlertSoon(
  BuildContext context,
) {
  var msg = 'Yahh ketauan wkwk, janji gw bg, soon :D';
  showAlert(context, msg);
}
