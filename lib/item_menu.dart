import 'package:flutter/material.dart';
import 'package:ud_simbolon/utils.dart';

class ItemMenu extends StatelessWidget {

  final String _label;
  final IconData _iconData;
  final Function() _click;

  const ItemMenu({
    Key? key,
    required String label,
    required IconData iconData,
    required Function() click,
  }): 
  _label = label,
  _iconData = iconData,
  _click = click,
  super(key:key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: cardColor, borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: _click,
                iconSize: constraints.maxHeight / 5,
                icon: Icon(
                  _iconData,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              _label,
              style: TextStyle(
                  fontFamily: fontTitleStr,
                  fontSize: constraints.maxHeight / 10,
                  color: Colors.white),
            ),
          )
        ],
      );
    });
  }
}