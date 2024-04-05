import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  const ContainerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 37, 35, 35),
          borderRadius: BorderRadius.circular(10)),
      child: HelperText(bigText: text),
    );
  }
}
