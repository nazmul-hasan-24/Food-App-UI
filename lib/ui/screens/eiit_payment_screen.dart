import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/upload_image_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/payment_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:get/get.dart';

class EditPaymentScreen extends StatelessWidget {
  const EditPaymentScreen({super.key});

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
                  largeText: "Payment",
                  fontSize: Dimensions.width25,
                ),
                verticalHeight(Dimensions.height16),
                verticalHeight(Dimensions.height22),
                PaymentWidget(
                  imageName: ImagePath.visa,
                  imageHeight: Dimensions.height16,
                  text: '2121 6543 8989 ****',
                ),
                verticalHeight(Dimensions.height20),
                PaymentWidget(
                  imageName: ImagePath.paypal,
                  imageHeight: Dimensions.height22,
                ),
                verticalHeight(Dimensions.height20),
                PaymentWidget(
                  imageName: ImagePath.payoneer,
                  text: '2121 6543 8989 ****',
                  imageHeight: Dimensions.height30,
                ),
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
