import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/sign_in_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:get/get.dart';

class SuccessNotificationScreen extends StatelessWidget {
  const SuccessNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              ImagePath.recBack,
              fit: BoxFit.cover,
              // height: 200,
              // width: 300,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width40,
                vertical: Dimensions.height153,
              ),
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(
                  Dimensions.height20,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          ImagePath.done,
                          fit: BoxFit.fill,
                        ),
                      ),
                      verticalSpace(Dimensions.height33),
                      Text(
                        "Congrast!",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: AppColor.primaryColor,
                          fontSize: Dimensions.height33,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      verticalSpace(Dimensions.font12),
                      Text(
                        "Password reset succesful!",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: AppColor.whiteColorFFF,
                          fontSize: Dimensions.height18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      verticalSpace(Dimensions.height40),
                      Center(
                        child: ElevatedButtonWidget(
                          text: "Back",
                          buttonBackGrounColor: AppColor.primaryColor,
                          textColour: AppColor.textBlack000,
                          onTab: () {
                            Get.offAll(
                              () => const SignInScreen(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
