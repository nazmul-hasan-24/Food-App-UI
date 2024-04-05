import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/confirm_order_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:get/get.dart';

class PlaceOdredWidget extends StatelessWidget {
  const PlaceOdredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(const Size.fromHeight(192)),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImagePath.backgroundImage),
          filterQuality: FilterQuality.high,
        ),
        borderRadius: BorderRadius.circular(20),
        color: AppColor.primaryColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sub - Total",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "100\$",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery Charge",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "15\$",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "14\$",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "101\$",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          ElevatedButtonWidget(
            onTab: () {
              Get.to(() => const ConfirmOrderScreen());
            },
            text: "Place My Order",
            textColour: AppColor.primaryColor,
            buttonBackGrounColor: AppColor.whiteColor,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
