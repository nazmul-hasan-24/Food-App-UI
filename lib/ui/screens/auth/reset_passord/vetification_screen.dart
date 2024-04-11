import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:food_grid_ui/ui/screens/auth/reset_passord/set_new_password_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(Dimensions.height20)),
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width25)
              .copyWith(top: Dimensions.height44),
          child: BodyBackground(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () => Get.back(),
                ),
                verticalSpace(Dimensions.height33),
                BigText(
                  largeText: "Enter 4-digit verification code",
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(Dimensions.height22),
                SmallText(
                  smallText:
                      "Code send to +88091576****. this code will expired in 01:30",
                  fontSize: Dimensions.font12,
                ),
                verticalSpace(Dimensions.height40),
                OtpTextField(
                  numberOfFields: 5,
                  fieldHeight: 108,
                  borderColor: const Color(0xFF512DA8),
                  contentPadding: const EdgeInsets.all(15),
                  margin: EdgeInsets.only(right: Dimensions.width15),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       title: Text("Verification Code"),
                    //       content: Text('Code entered is $verificationCode'),
                    //     );
                    //   },
                    // );
                  }, // end onSubmit
                ),
                Center(
                  child: ElevatedButtonWidget(
                    text: "Next",
                    textColour: AppColor.backgroundColor2525,
                    onTab: () => Get.to(
                      () => const SetNewPasswordScreen(),
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
