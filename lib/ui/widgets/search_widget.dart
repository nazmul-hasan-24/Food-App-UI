import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, required this.text});
  final List<String> text;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 14,
      children: text
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.5),
              child: Chip(
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                backgroundColor: AppColor.lightBlack,
                label: Text(
                  e,
                  style: const TextStyle(color: AppColor.whiteColorFFF),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
