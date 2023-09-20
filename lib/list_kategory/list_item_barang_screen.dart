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
                    fontFamily: fontTitleStr,
                    fontSize: 22,
                    color: welcomeColor),
              ),
            )
          ],
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          var titleFontSize = constraints.maxWidth / 26;
          var moneyFontSize = constraints.maxWidth / 28;
          var qtyFontSize = constraints.maxWidth / 32;
          var defaultSize = 2;
          if (constraints.maxWidth >= 500 && constraints.maxWidth < 700) {
            defaultSize = 3;
            titleFontSize = constraints.maxWidth / 36;
            moneyFontSize = constraints.maxWidth / 38;
            qtyFontSize = constraints.maxWidth / 42;
          } else if (constraints.maxWidth >= 700 &&
              constraints.maxWidth < 900) {
            defaultSize = 4;
            titleFontSize = constraints.maxWidth / 46;
            moneyFontSize = constraints.maxWidth / 48;
            qtyFontSize = constraints.maxWidth / 52;
          } else if (constraints.maxWidth >= 900) {
            defaultSize = 5;
            titleFontSize = constraints.maxWidth / 56;
            moneyFontSize = constraints.maxWidth / 58;
            qtyFontSize = constraints.maxWidth / 62;
          }
          return _listItems.isNotEmpty
              ? GridView.count(
                  primary: false,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: defaultSize,
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
                                  style: TextStyle(
                                      fontSize: titleFontSize,
                                      fontFamily: fontTitleStr),
                                ),
                                Text(
                                  changeToRupiah(item.price),
                                  style: TextStyle(
                                      color: welcomeColor,
                                      fontSize: moneyFontSize,
                                      fontFamily: fontTitleStr),
                                ),
                                Text(
                                  '${item.qty} unit',
                                  style: TextStyle(
                                      fontSize: qtyFontSize,
                                      fontFamily: fontTitleStr),
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
                ));
        }));
  }
}
