import 'package:flutter/material.dart';
import 'package:ud_simbolon/utils.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return itemMenu('Alat tulis', Icons.edit_outlined, () {
      showAlert(context, 'Alat tulis');
    });
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
}
