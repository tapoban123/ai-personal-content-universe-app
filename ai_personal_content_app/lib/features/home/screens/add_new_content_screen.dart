import 'package:ai_personal_content_app/core/common/widgets/custom_appbar.dart';
import 'package:ai_personal_content_app/core/theme/app_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class AddNewContentScreen extends StatelessWidget {
  const AddNewContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "",
        leading: Icon(Icons.close, color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          spacing: 8.h,
          children: [
            _AddContentOptionButton(
              title: "Take Photo",
              icon: Icons.camera_alt_outlined,
              onTap: () {
                final picker = ImagePicker();
                picker.pickImage(source: ImageSource.camera);
              },
            ),
            _AddContentOptionButton(
              title: "Scan Document",
              icon: Icons.document_scanner_outlined,
              onTap: () {
                // may use cunning_document_scanner: ^1.4.0
              },
            ),
            _AddContentOptionButton(
              title: "Upload File",
              icon: Icons.upload_file,
              onTap: () {
                // FilePicker.platform.pickFiles(type: FileType.image);
              },
            ),
            _AddContentOptionButton(
              title: "Create/Paste notes",
              icon: Icons.paste_outlined,
              onTap: () {},
            ),
            // Expanded(child: ListView.builder(itemBuilder: (context, index) => ,))
          ],
        ),
      ),
    );
  }
}

class _AddContentOptionButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _AddContentOptionButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.metalColor,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.w,
        ).copyWith(right: 20.w),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 16.w,
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: AppColors.blueColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(icon, color: AppColors.blueColor, size: 22.w),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontVariations: [FontVariation.weight(600)],
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 14.w,
            color: AppColors.lightGreyColor,
          ),
        ],
      ),
    );
  }
}
