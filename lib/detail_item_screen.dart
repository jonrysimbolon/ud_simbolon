// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/utils.dart';

class DetailItemScreen extends StatelessWidget {
  final Item _item;

  const DetailItemScreen({
    Key? key,
    required Item item,
  })  : _item = item,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
          HeaderItem(item: _item),
          BodyItem(item: _item),
          FooterItem(item: _item)
        ]))));
  }
}

class HeaderItem extends StatelessWidget {
  final Item item;
  const HeaderItem({super.key, required this.item});

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
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: cardColorForBackgroundIcon,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back)),
                      )
                    ],
                  )))
        ],
      );
}

class BodyItem extends StatelessWidget {
  final Item item;
  const BodyItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontFamily: fontTitleStr)),
              Text(
                '${item.qty} unit',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: fontTitleStr),
              )
            ],
          ),
          Text('Rp. ${item.price}',
              style: const TextStyle(
                  color: welcomeColor,
                  fontSize: 20.0,
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

class FooterItem extends StatelessWidget {
  final Item item;
  const FooterItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  "Home",
                  style:
                      TextStyle(color: Colors.black, fontFamily: fontTitleStr),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
          )),
    );
  }
}
