import 'package:flutter/material.dart';

class Category {
  String id;
  String name;

  Category({
    required this.id,
    required this.name,
  });
}

List<Category> categories = [
  Category(id: 'C001', name: 'Alat tulis'),
  Category(id: 'C002', name: 'Alat mandi'),
  Category(id: 'C003', name: 'Bahan jahit'),
  Category(id: 'C004', name: 'Masker'),
  Category(id: 'C005', name: 'Rokok'),
  Category(id: 'C006', name: 'Alat cuci'),
  Category(id: 'C007', name: 'Jajanan'),
  Category(id: 'C008', name: 'Kopi'),
];

List<IconData> iconsData = [
    Icons.edit_outlined,
    Icons.bathtub_outlined,
    Icons.push_pin_outlined,
    Icons.masks_outlined,
    Icons.smoking_rooms_outlined,
    Icons.wash_outlined,
    Icons.fastfood_outlined,
    Icons.coffee_outlined,
  ];