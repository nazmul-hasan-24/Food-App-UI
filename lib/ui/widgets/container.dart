import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  const ContainerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: Dimensions.height80,
      decoration: BoxDecoration(
        color: AppColor.backgroundColor2525,
        borderRadius: BorderRadius.circular(10),
      ),
      child: LargeText(
        largeText: text,
      ),
    );
  }
}
