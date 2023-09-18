// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ud_simbolon/utils.dart';

class MenuComponent extends StatelessWidget {
  final List<Widget> _items;

  const MenuComponent({
    Key? key,
    required List<Widget> items,
  }) : 
  _items= items,
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: _items,
    );
  }
}

Widget itemMenu(
    String label,
    IconData iconData,
    Function() click,
  ) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: click,
              iconSize: 12,
              icon: Icon(
                iconData,
                color: Colors.black,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            label,
            style: const TextStyle(
                fontFamily: fontTitleStr, fontSize: 5, color: Colors.white),
          ),
        )
      ],
    );
  }