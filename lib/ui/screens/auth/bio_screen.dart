import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/payment_method_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width25, vertical: Dimensions.height44),
          child: BodyBackground(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(onTab: () {
                    Get.back();
                  }),
                  verticalSpace(Dimensions.height20),
                  BigText(
                    largeText: "Fill in your bio to get\nstarted",
                    fontSize: Dimensions.width25,
                  ),
                  verticalSpace(Dimensions.height16),
                  SmallText(
                      fontSize: Dimensions.font12,
                      smallText:
                          "This data will be displayed in your account\nprofile for secuity"),
                  verticalSpace(Dimensions.height22),
                  const CustomTextFormField(
                    hintText: "First Name",
                    textInputType: TextInputType.name,
                  ),
                  verticalSpace(Dimensions.font12),
                  const CustomTextFormField(
                    hintText: "Last Name",
                    textInputType: TextInputType.text,
                  ),
                  verticalSpace(Dimensions.font12),
                  const CustomTextFormField(
                    hintText: "Mobile Number",
                    textInputType: TextInputType.text,
                  ),
                  verticalSpace(Dimensions.height40),
                  Center(
                    child: ElevatedButtonWidget(
                      text: "Next",
                      textColour: AppColor.textBlack000,
                      buttonBackGrounColor: AppColor.primaryColor,
                      onTab: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const PaymentMethodScreen();
                            },
                          ),
                        );
                      },
                    ),
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
