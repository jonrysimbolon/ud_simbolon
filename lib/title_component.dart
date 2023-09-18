// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ud_simbolon/utils.dart';

class TitleComponent extends StatelessWidget {
  final String _title;
  final Function() _click;

  const TitleComponent({
    Key? key,
    required String title,
    required Function() click,
  })  : _title = title,
        _click = click,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _title,
            style: const TextStyle(
                fontFamily: fontTitleStr, color: labelColor, fontSize: 12),
          ),
          IconButton(
            onPressed: _click,
            icon: const Icon(Icons.more_horiz),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
