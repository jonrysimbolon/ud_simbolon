import 'package:flutter/material.dart';
import 'package:ud_simbolon/menu_component.dart';

const bgColor = Color(0xFF80C764);
const cardColor = Color(0xFF72BD55);
const textColor = Color(0xFF9F9D9D);
const labelColor = Color(0xFFEDEAEA);
const welcomeColor = Color(0xFF22361B);

const fontTitleStr = 'Staatliches';
const fontDescStr = 'Oxygen';

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

List<Widget> categories(BuildContext context) => [
      itemMenu('Alat tulis', Icons.edit_outlined, () {
        showAlert(context, 'Alat tulis');
      }),
      itemMenu('Alat mandi', Icons.bathtub_outlined, () {
        showAlert(context, 'Alat mandi');
      }),
      itemMenu('Bahan jahit', Icons.push_pin_outlined, () {
        showAlert(context, 'Bahan jahit');
      }),
      itemMenu('Masker', Icons.masks_outlined, () {
        showAlert(context, 'Masker');
      }),
      itemMenu('Rokok', Icons.smoking_rooms_outlined, () {
        showAlert(context, 'Rokok');
      }),
      itemMenu('Alat cuci', Icons.wash_outlined, () {
        showAlert(context, 'Alat cuci');
      }),
      itemMenu('Jajanan', Icons.fastfood_outlined, () {
        showAlert(context, 'Jajanan');
      }),
      itemMenu('Kopi', Icons.coffee_outlined, () {
        showAlert(context, 'Kopi');
      }),
    ];