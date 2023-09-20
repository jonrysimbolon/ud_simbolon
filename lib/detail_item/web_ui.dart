// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ud_simbolon/detail_item/detail_item_screen.dart';
import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/utils.dart';

class WebDetailItemPage extends StatelessWidget {
  final Item item;
  const WebDetailItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HeaderWebItem(item: item),
      BodyWebItem(item: item),
      const FooterItem()
    ]);
  }
}

class HeaderWebItem extends StatelessWidget {
  final Item item;
  const HeaderWebItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(1000)),
              child: AspectRatio(
                aspectRatio: 3 / 1,
                child: Image.asset(
                  'images/${item.id}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: TileWebItem(item: item))
        ],
      ));
}

class TileWebItem extends StatelessWidget {
  final Item item;
  const TileWebItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ItemTextForWeb(
          text: item.name,
          size: 25,
          fontFamily: fontTitleStr,
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ItemTextForWeb(
          text: changeToRupiah(item.price),
          size: 22,
          color: Colors.red,
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ItemTextForWeb(text: '${item.qty} unit', size: 22),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ItemTextForWeb(text: item.category, size: 16),
      ]),
    ]);
  }
}

class ItemTextForWeb extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final String fontFamily;

  const ItemTextForWeb({
    Key? key,
    required this.text,
    required this.size,
    this.color = Colors.black,
    this.fontFamily = fontDescStr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Text(text,
          style:
              TextStyle(color: color, fontSize: size, fontFamily: fontFamily)),
    );
  }
}

class BodyWebItem extends StatelessWidget {
  final Item item;
  const BodyWebItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: Text(item.desc,
            style: const TextStyle(
                color: Colors.black, fontSize: 12.0, fontFamily: fontDescStr)));
  }
}
