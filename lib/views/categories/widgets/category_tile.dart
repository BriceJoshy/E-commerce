import 'package:e_commerce/common/app_style.dart';
import 'package:e_commerce/common/reusable_text.dart';
import 'package:e_commerce/constants/constants.dart';
import 'package:e_commerce/views/categories/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.category,
  });

  var category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoryPage(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 900));
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        backgroundImage:
            Image.network(category["imageUrl"], fit: BoxFit.contain).image,
      ),
      title: ReusableText(
        text: category["title"],
        style: appStyle(12, kGray, FontWeight.normal),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: kGray, size: 15.r),
    );
  }
}
