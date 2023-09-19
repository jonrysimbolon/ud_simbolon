import 'package:flutter/material.dart';
import 'package:ud_simbolon/model/item.dart';

class Category {
  String id;
  String name;
  List<Item> items;

  Category({
    required this.id,
    required this.name,
    required this.items
  });
}

List<Category> categories = [
  Category(id: 'C001', name: 'Alat tulis', items: bookItems),
  Category(id: 'C002', name: 'Alat mandi', items: []),
  Category(id: 'C003', name: 'Bahan jahit', items: []),
  Category(id: 'C004', name: 'Masker', items: []),
  Category(id: 'C005', name: 'Rokok', items: []),
  Category(id: 'C006', name: 'Alat cuci', items: []),
  Category(id: 'C007', name: 'Jajanan', items: []),
  Category(id: 'C008', name: 'Kopi', items: []),
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
