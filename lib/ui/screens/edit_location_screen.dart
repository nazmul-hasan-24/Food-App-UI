import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/set_location_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class EditLocationScreen extends StatelessWidget {
  const EditLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width25,
            ).copyWith(top: Dimensions.height44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.back();
                  },
                ),
                verticalSpace(20),
                BigText(
                  largeText: "Shipping",
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(14),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  constraints: BoxConstraints.tight(const Size.fromHeight(115)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 37, 35, 35),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(
                            smallText: 'Order Location',
                            fontSize: Dimensions.height14,
                          ),
                          verticalSpace(Dimensions.height8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.all(5).copyWith(right: 12),
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFF14D),
                                    shape: BoxShape.circle),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    ImagePath.location, //location icon
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                              const Flexible(
                                child: SmallText(
                                    textColor: AppColor.whiteColorFFF,
                                    smallText:
                                        "55/B, Mohammadpur, Dhaka- 1202, Bnagladesh, "),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpace(Dimensions.height14),
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  constraints: BoxConstraints.tight(
                      Size.fromHeight(Dimensions.height153)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 37, 35, 35),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(
                            smallText: 'Deliver To',
                            fontSize: Dimensions.height14,
                          ),
                          verticalSpace(Dimensions.height8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.all(5).copyWith(right: 12),
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFF14D),
                                    shape: BoxShape.circle),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    ImagePath.location, //location icon
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                              const Flexible(
                                child: SmallText(
                                    textColor: AppColor.whiteColorFFF,
                                    smallText:
                                        "55/B, Mohammadpur, Dhaka- 1202, Bnagladesh, "),
                              ),
                            ],
                          ),
                          verticalSpace(Dimensions.height8),
                          GestureDetector(
                            onTap: () =>
                                Get.to(() => const SetLocationScreen()),
                            child: const SmallText(smallText: "Set Location"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
