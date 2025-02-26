import 'package:e_commerce/common/custom_appbar.dart';
import 'package:e_commerce/common/custom_container.dart';
import 'package:e_commerce/common/heading.dart';
import 'package:e_commerce/constants/constants.dart';
import 'package:e_commerce/views/home/widgets/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppbar()),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: "Nearby Restaurants",
                onTap: () {},
              ),
              Heading(
                text: "Try Something New",
                onTap: () {},
              ),
              Heading(
                text: "Food Closer to You",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
