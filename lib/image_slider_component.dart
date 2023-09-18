// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:ud_simbolon/utils.dart';

class ImageSliderComponent extends StatelessWidget {
  final List<String> _images;

  const ImageSliderComponent({
    Key? key,
    required List<String> images,
  })  : _images = images,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: ImageSlideshow(
        width: double.infinity,
        height: 180,
        initialPage: 0,
        indicatorColor: cardColor,
        indicatorBackgroundColor: textColor,
        autoPlayInterval: 3000,
        isLoop: true,
        children: _images
            .map((data) => Image.asset(
                  data,
                  fit: BoxFit.cover,
                ))
            .toList(),
      ),
    );
  }
}
