import 'package:flutter/material.dart';
import 'package:ud_simbolon/utils.dart';

class PromoComponent extends StatelessWidget {
  const PromoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return itemPromo('Beli 3 buku gratis 1 pulpen', 'images/imageslider.jpeg',
        () {
      showAlert(context, 'Beli 3 buku gratis 1 pulpen');
    });
  }
}

Widget itemPromo(
  String title,
  String pathImg,
  Function() click,
) {
  return InkWell(
    onTap: click,
    child: Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(
            pathImg,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: fontTitleStr, fontSize: 12, color: Colors.white),
            ),
          )
        ],
      ),
    ),
  );
}
