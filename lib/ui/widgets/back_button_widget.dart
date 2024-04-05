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
        minimumSize: Size(width / 8.15, height / 21.34),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(left: 10),
        backgroundColor: const Color.fromRGBO(47, 40, 35, 0.66),
      ),
      // style: ButtonStyle(
      //   shape: MaterialStatePropertyAll<OutlinedBorder>(
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      //   backgroundColor: const MaterialStatePropertyAll<Color>(
      //       Color.fromARGB(255, 46, 35, 35)),
      // ),
      onPressed: onTab,
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.orange,
        size: 24,
      ),
    );
  }
}
