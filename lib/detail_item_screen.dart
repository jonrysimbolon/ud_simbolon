// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ud_simbolon/model/item.dart';

class DetailItemScreen extends StatelessWidget {
  final Item _item;

  const DetailItemScreen({
    Key? key,
    required Item item,
  }) : 
  _item= item,
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}
