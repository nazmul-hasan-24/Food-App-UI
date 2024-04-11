import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTab;

  final Color? textColour;
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
      this.height = 0,
      this.width = 0,
      this.fontSize = 0,
      this.buttonBackGrounColor = AppColor.primaryColor,
      this.textColour = AppColor.whiteColorFFF});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.height10),
        ),
        backgroundColor: buttonBackGrounColor,
        minimumSize: Size(
          width == 0 ? Dimensions.butonWidth157 : width!,
          height == 0 ? Dimensions.buttonHeight51 : height,
        ),
      ),
      onPressed: onTab,
      child: BigText(
        fontSize: fontSize == 0 ? Dimensions.height16 : fontSize!,
        largeText: text,
        color: textColour!,
      ),
    );
  }
}
