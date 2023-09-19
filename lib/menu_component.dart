import 'package:flutter/material.dart';
import 'package:ud_simbolon/item_menu.dart';
import 'package:ud_simbolon/model/category.dart';
import 'package:ud_simbolon/utils.dart';

class MenuComponent extends StatefulWidget {

  const MenuComponent({
    Key? key,
  })  :super(key: key);

  @override
  State<MenuComponent> createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
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
                showAlert(context, itemCategory.id);
              });
        }));
  }
}
