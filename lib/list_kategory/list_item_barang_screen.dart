import 'package:flutter/material.dart';
import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/my_navigation.dart';
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
              '(${_listItems.length} unit)',
              style: const TextStyle(
                  fontFamily: fontTitleStr, fontSize: 22, color: welcomeColor),
            ),
          )
        ],
      ),
      body: _listItems.isNotEmpty
          ? GridView.count(
              primary: false,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              children: List.generate(_listItems.length, (index) {
                var item = _listItems[index];
                return InkWell(
                  onTap: () {
                    goToDetailItem(context: context, data: item);
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 2 / 1,
                          child: Image.asset(
                            'images/${item.id}.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Flexible(
                          child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                  fontSize: 14, fontFamily: fontTitleStr),
                            ),
                            Text(
                              changeToRupiah(item.price),
                              style: const TextStyle(
                                  color: welcomeColor,
                                  fontSize: 10,
                                  fontFamily: fontTitleStr),
                            ),
                            Text(
                              '${item.qty} unit',
                              style: const TextStyle(
                                  fontSize: 8, fontFamily: fontTitleStr),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                );
              }))
          : Center(
              child: Image.asset(
              'images/empty.gif',
            )),
    );
  }
}
