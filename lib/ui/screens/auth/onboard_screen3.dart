import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/sign_in_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class OnBoadingScreen3 extends StatelessWidget {
  const OnBoadingScreen3({super.key});

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
              ImagePath.onFood1,
              width: Dimensions.screenWidth / 1.14,
              height: Dimensions.screenHeight / 2.54,
            ),
          ),
          verticalHeight(Dimensions.screenHeight / 11.72),
          LargeText(
            largeText: 'Find FoodGrid is Where Your ',
            fontSize: Dimensions.height22,
          ),
          LargeText(
            largeText: 'Comfor Food Lives',
            fontSize: Dimensions.height22,
          ),
          verticalHeight(Dimensions.height40),
          SmallText(
            smallText: "Enjoy a fast and smoth food delivery at",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          SmallText(
            smallText: "your doorshetp",
            fontSize: Dimensions.font12,
            textColor: AppColor.whiteColorFFF,
          ),
          verticalHeight(Dimensions.height33),
          ElevatedButtonWidget(
            text: "Next",
            textColour: AppColor.textBlack000,
            onTab: () {
              Get.to(() => const SignInScreen());
            },
          ),
        ],
      ),
    );
  }
}
