import 'package:flutter/material.dart';
import 'package:ud_simbolon/detail_item_screen.dart';
import 'package:ud_simbolon/list_item_barang_screen.dart';
import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/model/promo.dart';
import 'package:ud_simbolon/promo_item_screen.dart';

void goToHome({required BuildContext context}) {
  Navigator.of(context).popUntil((route) => route.isFirst);
}

void back({required BuildContext context}) {
  Navigator.pop(context);
}

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

void goToDetailPromo({required BuildContext context, required Promo promo}) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return DetailPromoItemScreen(item: promo);
    },
  ));
}
