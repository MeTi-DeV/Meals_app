import 'dart:ui';

import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoriesItem(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(title, style: Theme.of(context).textTheme.subtitle1),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}