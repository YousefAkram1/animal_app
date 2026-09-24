import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.child,
    required this.width,
    required this.height,
    this.onPressed,
  });
  final Widget child;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.5).w,

      child: TextButton(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(10.0),
          shadowColor: WidgetStatePropertyAll(
            Colors.black.withValues(alpha: 0.20),
          ),

          fixedSize: WidgetStatePropertyAll(Size(width, height)),

          backgroundColor: WidgetStatePropertyAll(AppColors.primary),

          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30).r),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
