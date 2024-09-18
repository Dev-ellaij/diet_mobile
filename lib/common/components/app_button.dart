import 'package:diet_mobile/common/components/app_dimensions.dart';
import 'package:diet_mobile/common/components/app_textstyle.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.width,
    this.height = 60,
    this.borderRadius = 100,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;

  final double? width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? AppDimensions.deviceWidth(context) * 0.85,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.semiBold(fontSize: 16, color: textColor),
        ),
      ),
    );
  }
}
