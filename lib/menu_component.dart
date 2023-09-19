import 'package:flutter/material.dart';
import 'package:ud_simbolon/item_menu.dart';
import 'package:ud_simbolon/model/category.dart';
import 'package:ud_simbolon/my_navigation.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 4,
        children: List.generate(categories.length, (index) {
          var iconData = iconsData[index];
          var itemCategory = categories[index];
          return ItemMenu(
              label: itemCategory.name,
              iconData: iconData,
              click: () {
                goToListItemBarangScreen(
                    context: context,
                    title: itemCategory.name,
                    listItem: itemCategory.items);
              });
        }));
  }
}
