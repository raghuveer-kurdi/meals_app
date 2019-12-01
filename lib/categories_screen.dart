import 'package:flutter/material.dart';
import 'package:meal_app/category_item.dart';
import './models/category.dart';

class CategoriesScreeen extends StatelessWidget {
  final List<Category> categories;

  CategoriesScreeen(this.categories);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals App'),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: categories.map((category) {
          return CategoryItem(category);
        }).toList(),
      ),
    );
  }
}
