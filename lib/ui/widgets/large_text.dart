import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';

class LargeText extends StatelessWidget {
  final String largeText;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const LargeText({
    super.key,
    required this.largeText,
    this.fontSize = 18,
    this.color = AppColor.whiteColor,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      largeText,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
