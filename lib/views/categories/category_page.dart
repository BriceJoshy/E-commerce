import 'package:e_commerce/common/app_style.dart';
import 'package:e_commerce/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Text(
          "Category Page",
          style: appStyle(20, Colors.black, FontWeight.normal),
        ),
      ),
      body: Container(
        child: const Center(
          child: Text("Category Page"),
        ),
      ),
    );
  }
}
