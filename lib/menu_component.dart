// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ud_simbolon/utils.dart';

class MenuComponent extends StatelessWidget {
  final List<Widget> _items;

  const MenuComponent({
    Key? key,
    required List<Widget> items,
  })  : _items = items,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
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
  return LayoutBuilder(builder: (context, constraints) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: click,
              iconSize:
                  constraints.maxHeight <= 400 ? constraints.maxHeight / 5 : 6,
              icon: Icon(
                iconData,
                color: Colors.black,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            label,
            style: TextStyle(
                fontFamily: fontTitleStr,
                fontSize: constraints.maxHeight <= 400
                    ? constraints.maxHeight / 10
                    : 2,
                color: Colors.white),
          ),
        )
      ],
    );
  });
}
