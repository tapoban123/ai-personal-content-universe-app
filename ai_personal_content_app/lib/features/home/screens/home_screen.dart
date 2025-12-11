import 'package:ai_personal_content_app/core/theme/app_colors.dart';
import 'package:ai_personal_content_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontVariations: [FontVariation.weight(600)],
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.person, color: Colors.white),
        actionsPadding: EdgeInsets.all(12),
        actions: [Icon(Icons.local_library, color: Colors.white)],
      ),
      body: Column(
        children: [
          Container(
            height: 48.w,
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: AppColors.blueGreyColor,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Row(
              spacing: 8.w,
              children: [
                Icon(Icons.search_rounded),
                Text(
                  "Search images, docs and notes...",
                  style: TextStyle(
                      color: AppColors.inactiveColor,
                      fontSize: 16.sp,
                      fontVariations: [FontVariation.weight(400)]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
