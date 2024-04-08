import 'package:flutter/material.dart';

FilledButton filledButtonWidget({
  required Widget widget,
  required VoidCallback onPress,
  required Color color,
  double size = 25,
}) {
  return FilledButton(
    style: ButtonStyle(
      alignment: Alignment.topCenter,
      backgroundColor: MaterialStatePropertyAll(color),
      minimumSize: MaterialStatePropertyAll(Size(size, size)),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.all(10),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    onPressed: onPress,
    child: widget,
  );
}
