import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final Function() onTab;
  const BackButtonWidget({super.key, required this.onTab});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    return IconButton(
      // iconSize: 44,

      padding: const EdgeInsets.all(0),
      style: IconButton.styleFrom(
        minimumSize: Size(width / 9.409, height / 23.578),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(left: 10),
        backgroundColor: const Color(0xFF2F2823).withOpacity(0.6),
      ),
      onPressed: onTab,
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Color(0xFFDA6317),
        size: 15,
      ),
    );
  }
}
