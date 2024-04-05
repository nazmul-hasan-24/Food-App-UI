import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, required this.onTap});
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      // alignment: WrapAlignment.spaceBetween,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: AppColor.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 17),
        ),
        TextButton(
          onPressed: onTap,
          child: const Text(
            'View More',
            style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        )
      ],
    );
  }
}
