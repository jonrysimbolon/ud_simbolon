// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/utils.dart';

class DetailItemScreen extends StatelessWidget {
  final Item _item;

  const DetailItemScreen({
    Key? key,
    required Item item,
  })  : _item = item,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: bgColor,
            title: Text(
              _item.name,
              style: const TextStyle(fontFamily: fontTitleStr),
            )),
        body: const Center());
  }
}
