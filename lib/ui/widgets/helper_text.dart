import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';

class HelperText extends StatelessWidget {
  final String bigText;
  final Color textColour;
  final double? fontSize;
  const HelperText(
      {super.key,
      required this.bigText,
      this.fontSize,
      this.textColour = AppColor.whiteColorFFF});

  @override
  Widget build(BuildContext context) {
    final double fontWidth = MediaQuery.of(context).size.width;

    return Text(
      bigText,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: fontWidth * 0.041,
          color: textColour),
    );
  }
}
