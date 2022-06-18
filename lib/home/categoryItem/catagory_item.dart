import 'package:flutter/material.dart';

import 'item.dart';

class CategoryItem extends StatelessWidget {
  Item item;
  CategoryItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: item.color),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100,
            child: Image.asset(
              'assets/icons/${item.icon}.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
              width: 100,
              alignment: Alignment.center,
              child: Text(
                item.name.toUpperCase(),
                textAlign: TextAlign.center,
              ))
        ],
      )),
    );
  }
}
