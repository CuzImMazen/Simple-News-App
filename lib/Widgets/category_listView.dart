import 'package:flutter/material.dart';
import 'package:news/Models/category_model.dart';
import 'package:news/Widgets/category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categoryModelList = const [
    CategoryModel(name: "Business", image: 'assets/business.avif'),
    CategoryModel(name: "Technology", image: 'assets/technology.jpeg'),
    CategoryModel(name: "Health", image: 'assets/health.avif'),
    CategoryModel(name: "Sports", image: 'assets/sports.avif'),
    CategoryModel(name: "Entertainment", image: 'assets/entertaiment.avif'),
    CategoryModel(name: "Science", image: "assets/science.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoryModelList
              .map((category) => CategoryCard(categoryModel: category))
              .toList(),
        ),
      ),
    );
  }
}
