import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:get/get.dart';

class ProfileSetpuCompleted extends StatelessWidget {
  const ProfileSetpuCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width40, vertical: Dimensions.height153),
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  ImagePath.done,
                  fit: BoxFit.fill,
                ),
              ),
              verticalHeight(Dimensions.height33),
              Text(
                "Congrast!",
                style: TextStyle(
                  letterSpacing: 1,
                  color: AppColor.primaryColor,
                  fontSize: Dimensions.height33,
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalHeight(Dimensions.font12),
              Text(
                "Your Profile Is Ready To Use!",
                style: TextStyle(
                  letterSpacing: 1,
                  color: AppColor.whiteColorFFF,
                  fontSize: Dimensions.height18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalHeight(40),
              Center(
                child: ElevatedButtonWidget(
                  text: "Try Order",
                  buttonBackGrounColor: AppColor.primaryColor,
                  textColour: AppColor.textBlack000,
                  onTab: () {
                    Get.offAll(
                      () => const MainBottomNavScreen(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
