import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';

class SmallText extends StatelessWidget {
  final String smallText;
  final double fontSize;
  final double? letterSpacing;
  final Color? textColor;
  final FontWeight? fontWeight;
  const SmallText(
      {super.key,
      required this.smallText,
      this.letterSpacing,
      this.fontSize = 15,
      this.textColor = AppColor.philippineGrayC4C4,
      this.fontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      smallText,
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight,
        fontFamily: 'Inter',
      ),
    );
  }
}
