import 'package:e_commerce/common/app_style.dart';
import 'package:e_commerce/common/reusable_text.dart';
import 'package:e_commerce/constants/constants.dart';
import 'package:e_commerce/controllers/categories_controller.dart';
import 'package:e_commerce/views/categories/all_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    required this.category,
  });

  var category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoriesController());
    return GestureDetector(
        onTap: () {
          if (controller.categoryValue == category['_id']) {
            controller.updateCategory = category[''];
            controller.updateTitle = category[''];
          } else if (category['value'] == 'more') {
            Get.to(() => const AllCategories());
            transition:
            Transition.fadeIn;
            duration:
            const Duration(milliseconds: 900);
          } else {
            controller.updateCategory = category['_id'];
            controller.updateTitle = category['title'];
          }
        },
        child: Obx(
          () => Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            width: width * 0.19,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                  color: controller.categoryValue == category["_id"]
                      ? kSecondary
                      : kOffWhite,
                  width: 0.5.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35.h,
                  child: Image.network(
                    category['imageUrl'],
                    fit: BoxFit.contain,
                  ),
                ),
                ReusableText(
                    text: category['title'],
                    style: appStyle(12, kDark, FontWeight.normal))
              ],
            ),
          ),
        ));
  }
}
