import 'package:flutter/material.dart';
import 'package:news/Models/category_model.dart';
import 'package:news/Widgets/category_listView.dart';
import 'package:news/pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.categoryModel});

  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(category: categoryModel.name),
          ),
        ),
        child: Container(
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
