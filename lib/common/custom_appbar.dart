import 'package:e_commerce/common/app_style.dart';
import 'package:e_commerce/common/reusable_text.dart';
import 'package:e_commerce/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: kSecondary,
              backgroundImage: const NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 6.h, left: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: "Deliver to",
                      style: appStyle(13, kSecondary, FontWeight.w600)),
                  SizedBox(
                    width: width * 0.65,
                    child: Text(
                      "New York, 10001, Bollivard Street",
                      style: appStyle(11, kGrayLight, FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "❄️",
              style: TextStyle(fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}
