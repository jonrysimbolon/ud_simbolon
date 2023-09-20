import 'package:flutter/material.dart';
import 'package:ud_simbolon/model/promo.dart';
import 'package:ud_simbolon/my_navigation.dart';
import 'package:ud_simbolon/utils.dart';

class PromoComponent extends StatelessWidget {
  const PromoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemCount: promos.length,
        itemBuilder: (BuildContext context, int index) {
          final promo = promos[index];
          return ItemPromo(
            id: promo.id,
            title: promo.title,
            click: () => {goToDetailPromo(context: context, promo: promo)},
          );
        },
      ),
    );
  }
}

class ItemPromo extends StatelessWidget {
  final String id;
  final String title;
  final Function() click;

  const ItemPromo(
      {super.key, required this.id, required this.title, required this.click});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: click,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: cardColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    'images/$id.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontFamily: fontTitleStr,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
