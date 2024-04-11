import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/reset_passord/vetification_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class ResetPasswordByMethodScreen extends StatelessWidget {
  const ResetPasswordByMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(
              Dimensions.height20,
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width25,
          ).copyWith(
            top: Dimensions.height44,
          ),
          child: BodyBackground(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () => Get.back(),
                ),
                verticalSpace(
                  Dimensions.height33,
                ),
                BigText(
                  largeText: "Forgot password?",
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(Dimensions.height22),
                SmallText(
                  smallText:
                      "Select which contact details should we use to reset your password",
                  fontSize: Dimensions.font12,
                ),
                verticalSpace(Dimensions.height20),
                Container(
                  alignment: Alignment.center,
                  height: Dimensions.height125,
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor2525,
                    borderRadius: BorderRadius.circular(Dimensions.font12),
                  ),
                  child: const ListTile(
                    horizontalTitleGap: 15,
                    title: SmallText(smallText: 'via sms:'),
                    subtitle: SmallText(smallText: '*** *** 458'),
                    leading: Icon(
                      Icons.message,
                      // weight: 70,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
                verticalSpace(Dimensions.height14),
                Container(
                  alignment: Alignment.center,
                  height: Dimensions.height125,
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor2525,
                    borderRadius: BorderRadius.circular(Dimensions.font12),
                  ),
                  child: const ListTile(
                    horizontalTitleGap: 15,
                    title: SmallText(smallText: 'via Email:'),
                    subtitle: SmallText(smallText: '*** gmail.com'),
                    leading: Icon(
                      Icons.mark_email_unread_sharp,
                      // weight: 70,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
                verticalSpace(Dimensions.height40),
                Center(
                  child: ElevatedButtonWidget(
                    text: "Next",
                    textColour: AppColor.backgroundColor2525,
                    onTab: () => Get.to(
                      () => const VerificationScreen(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
