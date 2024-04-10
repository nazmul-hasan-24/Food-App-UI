import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/payment_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:get/get.dart';

class PlaceOdredWidget extends StatelessWidget {
  const PlaceOdredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height223,
      // constraints: BoxConstraints.tight( Size.fromHeight( )),
      padding: EdgeInsets.all(Dimensions.height16)
          .copyWith(bottom: Dimensions.height10),
      // margin: const EdgeInsets.only(bottom: 75),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagePath.backgroundImage),
          filterQuality: FilterQuality.high,
        ),
        borderRadius: BorderRadius.circular(Dimensions.height25),
        gradient: LinearGradient(
          colors: [
            AppColor.primaryColor,
            AppColor.primaryColor.withOpacity(0.92)
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeText(
                largeText: "Sub - Total",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              LargeText(
                largeText: "\$140",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeText(
                largeText: "Delivery Charge",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              LargeText(
                largeText: "\$10",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeText(
                largeText: "Discount",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              LargeText(
                largeText: "\$20",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          verticalHeight(Dimensions.height20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeText(
                largeText: "Total",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              LargeText(
                largeText: "\$130",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          const Spacer(),
          ElevatedButtonWidget(
            height: Dimensions.buttonHeight51,
            onTab: () {
              Get.to(() => const PaymentsScreen());
            },
            text: "Place My Order",
            textColour: AppColor.primaryColor,
            buttonBackGrounColor: AppColor.whiteColorFFF,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
