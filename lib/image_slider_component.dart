// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:ud_simbolon/detail_item_screen.dart';
import 'package:ud_simbolon/model/item.dart';
import 'package:ud_simbolon/my_navigation.dart';

import 'package:ud_simbolon/utils.dart';

class ImageSliderComponent extends StatelessWidget {
  final List<Item> _data;
  final bool _isWeb;

  const ImageSliderComponent({
    Key? key,
    required List<Item> data,
    required bool isWeb,
  })  : _isWeb = isWeb,
        _data = data,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: bgColor,
        child: ImageSlideshow(
          width: double.infinity,
          height: constraints.maxWidth / 2,
          initialPage: 0,
          indicatorColor: cardColor,
          indicatorBackgroundColor: textColor,
          autoPlayInterval: 3000,
          isLoop: true,
          children: _data
              .map((data) => InkWell(
                    onTap: () {
                      goToDetailItem(
                        context: context,
                        data: data
                      );
                    },
                    child: ClipRRect(
                      borderRadius: _isWeb
                          ? const BorderRadius.all(Radius.circular(10))
                          : const BorderRadius.all(Radius.circular(0)),
                      child: Image.asset(
                        'images/${data.id}.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
              .toList(),
        ),
      );
    });
  }
}
