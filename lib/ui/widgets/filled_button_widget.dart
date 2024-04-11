import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';

IconButton iconButtonWidget({
  required Widget widget,
  required VoidCallback onPress,
  required Color color,
  double size = 50,
}) {
  return IconButton(
    style: IconButton.styleFrom(
      alignment: Alignment.center,
      backgroundColor: color,
      // minimumSize: MaterialStatePropertyAll(Size(size, size)),
      // padding: const MaterialStatePropertyAll(
      //   EdgeInsets.all(10),
      // ),

      minimumSize: Size(
        Dimensions.buttonHeight60,
        Dimensions.buttonHeight60,
      ),
      // shape: RoundedRectangleBorder(
      // borderRadius: BorderRadius.circular(30),
      // ),
    ),
    onPressed: onPress,
    icon: widget,
  );
}
