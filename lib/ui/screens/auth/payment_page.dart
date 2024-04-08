import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/upload_image_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/container.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: BodyBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width25, vertical: Dimensions.height44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(onTab: () {
                  Get.back();
                }),
                verticalHeight(Dimensions.height20),
                LargeText(
                  largeText: "Payment Method",
                  fontSize: Dimensions.width25,
                ),
                verticalHeight(Dimensions.height16),
                SmallText(
                    fontSize: Dimensions.font12,
                    smallText:
                        "This data will be displayed in your account\n profile for security"),
                verticalHeight(Dimensions.height22),
                const ContainerWidget(text: "PayPal"),
                verticalHeight(Dimensions.height20),
                const ContainerWidget(text: "VISA"),
                verticalHeight(Dimensions.height20),
                const ContainerWidget(text: "Payoneer"),
                verticalHeight(Dimensions.height40),
                Center(
                  child: ElevatedButtonWidget(
                    text: "Next",
                    onTab: () {
                      Get.to(
                        () => const UploadImageScreen(),
                      );
                    },
                    textColour: AppColor.textBlack000,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
