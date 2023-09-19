import 'package:flutter/material.dart';
import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/utils.dart';

class ListItemBarangScreen extends StatelessWidget {
  final String _searchText;
  final List<Item> _listItems;

  const ListItemBarangScreen(
      {Key? key, required List<Item> listItems, required String searchText})
      : _searchText = searchText,
        _listItems = listItems,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          title: Text(
            _searchText,
            style: const TextStyle(fontFamily: fontTitleStr),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                '(${_listItems.length})',
                style: const TextStyle(fontFamily: fontTitleStr, fontSize: 22, color: welcomeColor),
              ),
            )
          ],
        ),
        body: const Center());
  }
}
