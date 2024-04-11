import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';

class PlaceOdredWidget extends StatelessWidget {
  const PlaceOdredWidget({super.key, required this.onTab});
  final VoidCallback onTab;

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
              BigText(
                largeText: "Sub - Total",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              BigText(
                largeText: "\$140",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                largeText: "Delivery Charge",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              BigText(
                largeText: "\$10",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                largeText: "Discount",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              BigText(
                largeText: "\$20",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          verticalSpace(Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                largeText: "Total",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
              BigText(
                largeText: "\$130",
                fontSize: Dimensions.height20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          // const Spacer(),
          ElevatedButtonWidget(
            height: Dimensions.buttonHeight51,
            onTab: onTab,
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
