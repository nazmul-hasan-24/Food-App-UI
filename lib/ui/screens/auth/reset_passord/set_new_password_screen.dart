import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/reset_passord/succes_notification_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class SetNewPasswordScreen extends StatelessWidget {
  const SetNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(Dimensions.height20),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width25,
            ).copyWith(
              top: Dimensions.height44,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(
                    onTab: () => Get.back(),
                  ),
                  verticalSpace(Dimensions.height20),
                  BigText(
                    largeText: "Reset Your Password?",
                    fontSize: Dimensions.height25,
                  ),
                  verticalSpace(Dimensions.height10),
                  SmallText(
                    smallText:
                        "Select which contact details should we use to reset your password",
                    fontSize: Dimensions.font12,
                  ),
                  verticalSpace(Dimensions.height30),
                  const CustomTextFormField(
                    hintText: 'New password',
                    suffixIconColor: Color(0xFFFFCC00),
                    suffixIcon: Icons.remove_red_eye_rounded,
                  ),
                  verticalSpace(Dimensions.height10),
                  const CustomTextFormField(
                    hintText: 'Confirm password',
                    suffixIcon: Icons.remove_red_eye_rounded,
                  ),
                  verticalSpace(Dimensions.height40),
                  Center(
                    child: ElevatedButtonWidget(
                        text: "Next",
                        textColour: AppColor.backgroundColor2525,
                        onTab: () => Get.to(
                              () => const SuccessNotificationScreen(),
                            )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
