import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // List res = [{}];
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 0),
        borderRadius: BorderRadius.circular(12),
        color: AppColor.lightBlack,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            alignment: Alignment.topCenter,
            ImagePath.resLogo1,
            height: height * 0.07,
            width: 100,
          ),
          const Text(
            "BUTCHER",
            style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          verticalHeight(6),
          const Text(
            '12 Mins',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
              color: AppColor.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
