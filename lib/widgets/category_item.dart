import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  CategoryItem(this.title, this.color ,this.id);
  void SelectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/category-meals', arguments: {'id':id , 'title':title}
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>SelectCategory(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.subtitle1),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
