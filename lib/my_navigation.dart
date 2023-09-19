import 'package:flutter/material.dart';
import 'package:ud_simbolon/detail_item_screen.dart';
import 'package:ud_simbolon/list_item_barang_screen.dart';
import 'package:ud_simbolon/model/item.dart';

void goToDetailItem({required BuildContext context, required Item data}) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return DetailItemScreen(
        item: data,
      );
    },
  ));
}

void goToListItemBarangScreen(
    {required BuildContext context,
    required String title,
    required List<Item> listItem}) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return ListItemBarangScreen(
        searchText: title,
        listItems: listItem,
      );
    },
  ));
}
