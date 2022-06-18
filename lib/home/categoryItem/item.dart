import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ItemType { income, expense }

class Item {
  String name;
  String icon;
  ItemType type;
  String? title = '';
  int? cost = 0;
  Color? color = const Color.fromARGB(255, 255, 242, 195);
  Item({required this.name, required this.icon, required this.type});
}
