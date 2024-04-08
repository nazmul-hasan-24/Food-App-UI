import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/screens/auth/onboard_screen3.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class OnBoadingScreen1 extends StatelessWidget {
  const OnBoadingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalHeight(Dimensions.screenHeight / 8.96),
          Center(
            child: Image.asset(
              ImagePath.food4,
              width: Dimensions.screenWidth / 1.14,
              height: Dimensions.screenHeight / 2.54,
            ),
          ),
          verticalHeight(Dimensions.screenHeight / 11.72),
          LargeText(
            largeText: 'Find Your Comfort',
            fontSize: Dimensions.height22,
          ),
          LargeText(
            largeText: 'Food here ',
            fontSize: Dimensions.height22,
          ),
          verticalHeight(Dimensions.height40),
          SmallText(
            smallText: "Here You can find chef or dish for every",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          SmallText(
            smallText: "Teste and color. Enjoy!",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          verticalHeight(Dimensions.height33),
          ElevatedButtonWidget(
            text: "Next",
            textColour: AppColor.textBlack000,
            onTab: () {
              Get.to(() => const OnBoadingScreen3());
            },
          ),
        ],
      ),
    );
  }
}
