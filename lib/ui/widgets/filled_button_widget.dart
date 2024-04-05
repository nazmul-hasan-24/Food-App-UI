import 'package:flutter/material.dart';

SizedBox filledButtonWidget({
  required Widget widget,
  required VoidCallback onPress,
  required Color color,
}) {
  return SizedBox(
    height: 60,
    width: 60,
    child: FilledButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          minimumSize: const MaterialStatePropertyAll(Size(25, 25)),
          padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
      onPressed: onPress,
      child: widget,
    ),
  );
}
