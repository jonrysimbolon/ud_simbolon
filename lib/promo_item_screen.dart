import 'package:flutter/material.dart';
import 'package:ud_simbolon/model/promo.dart';
import 'package:ud_simbolon/utils.dart';

class DetailPromoItemScreen extends StatelessWidget {
  final Promo _item;

  const DetailPromoItemScreen({
    Key? key,
    required Promo item,
  })  : _item = item,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: bgColor,
            title: Text(
              _item.title,
              style: const TextStyle(fontFamily: fontTitleStr),
            )),
        body: const Center());
  }
}
