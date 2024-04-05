import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';

class PopularMenuCardWidget extends StatelessWidget {
  const PopularMenuCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(5),
      constraints:
          const BoxConstraints(minHeight: 150, minWidth: double.infinity),
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
        color: AppColor.lightBlack,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                ImagePath.food3,
              ),
            ),
          ),
          horizontal(6),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Harbar Pancake",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                verticalHeight(9),
                const Text(
                  'Pizza king',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: AppColor.textColor,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "\$23",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor),
          ),
        ],
      ),
    );
  }
}
