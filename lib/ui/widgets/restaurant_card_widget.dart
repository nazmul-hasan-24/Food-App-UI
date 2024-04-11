import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/detail_product_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class RestaurantCardWidget extends StatelessWidget {
  const RestaurantCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // List res = [{}];
    return GestureDetector(
      onTap: () => Get.to(
        () => const DetailProductScreen(),
      ),
      child: Container(
        height: Dimensions.height180,
        width: Dimensions.butonWidth157,
        padding: EdgeInsets.all(Dimensions.font12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.circular(Dimensions.font12),
          color: AppColor.lightBlack,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              ImagePath.resLogo1,
              height: Dimensions.screenHeight / 12.0,
              width: Dimensions.width68,
            ),
            BigText(
              largeText: "infini Tea",
              fontSize: Dimensions.height16,
              fontWeight: FontWeight.w700,
            ),
            // verticalSpace(6),
            SmallText(
              smallText: "11 min",
              fontSize: Dimensions.height13,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
      ),
    );
  }
}
