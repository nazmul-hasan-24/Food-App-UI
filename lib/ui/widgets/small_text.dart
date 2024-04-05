import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';

class SmallText extends StatelessWidget {
  final String smallText;
  final double fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  const SmallText(
      {super.key,
      required this.smallText,
      this.fontSize = 15,
      this.textColor = AppColor.philippineGray,
      this.fontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      smallText,
      style: TextStyle(
          fontSize: fontSize, color: textColor, fontWeight: fontWeight),
    );
  }
}
