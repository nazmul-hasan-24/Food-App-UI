import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';

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
        BigText(
          largeText: title,
          fontSize: 15,
        ),
        TextButton(
          onPressed: onTap,
          child: const Text(
            'View More',
            style: TextStyle(
              height: 0,
              color: Color(0xFFDA6317),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        )
      ],
    );
  }
}
