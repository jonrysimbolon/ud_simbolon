import 'package:flutter/material.dart';
import 'package:ud_simbolon/detail_item/detail_item_screen.dart';
import 'package:ud_simbolon/model/promo.dart';
import 'package:ud_simbolon/my_navigation.dart';
import 'package:ud_simbolon/utils.dart';

class DetailPromoItemScreen extends StatelessWidget {
  final Promo _item;

  const DetailPromoItemScreen({
    Key? key,
    required Promo item,
  })  : _item = item,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      HeaderPromo(item: _item),
      BodyPromo(item: _item),
      const FooterItem()
    ]))));
  }
}

class HeaderPromo extends StatelessWidget {
  final Promo item;
  const HeaderPromo({super.key, required this.item});

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: Image.asset(
              'images/${item.id}.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
              child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundColor: cardColorForBackgroundIcon,
                  child: IconButton(
                      onPressed: () {
                        back(context: context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ),
              ),
            ],
          ))
        ],
      );
}

class BodyPromo extends StatelessWidget {
  final Promo item;
  const BodyPromo({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(item.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontFamily: fontTitleStr)),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(item.desc,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontFamily: fontDescStr)),
          ),
        ],
      ),
    );
  }
}
