import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTab;

  final Color textColour;
  final double? width;
  final Color? buttonBackGrounColor;
  final double? fontSize;
  final double height;
  final FontWeight fontWeight;
  const ElevatedButtonWidget(
      {super.key,
      required this.text,
      required this.onTab,
      this.fontWeight = FontWeight.w600,
      this.height = 51,
      this.width = 130,
      this.fontSize = 18,
      this.buttonBackGrounColor = AppColor.primaryColor,
      this.textColour = AppColor.whiteColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        backgroundColor: buttonBackGrounColor,
        minimumSize: Size(width!, height),
      ),
      onPressed: onTab,
      child: Text(
        text,
        style: TextStyle(
            color: textColour, fontWeight: fontWeight, fontSize: fontSize),
      ),
    );
  }
}
