import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/payment_page.dart';
import 'package:food_grid_ui/ui/screens/location_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/place_order_widget.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.back();
                  },
                ),
                verticalHeight(20),
                const LargeText(largeText: "Confirm Order"),
                verticalHeight(14),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SmallText(smallText: "Deliver To"),
                          GestureDetector(
                            onTap: () => Get.to(
                              () => const LocationScreen(),
                            ),
                            child: const SmallText(
                              smallText: "Edit",
                              textColor: AppColor.primaryColor,
                            ),
                          )
                        ],
                      ),
                      verticalHeight(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5).copyWith(right: 12),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Colors.amber.shade300,
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
                                textColor: AppColor.whiteColor,
                                smallText:
                                    "55/B, Mohammadpur, Dhaka- 1202, Bnagladesh, "),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                verticalHeight(14),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SmallText(smallText: "Payment Method"),
                          GestureDetector(
                            onTap: () => Get.to(
                              () => const PaymentMethodScreen(),
                            ),
                            child: const SmallText(
                              smallText: "Edit",
                              textColor: AppColor.primaryColor,
                            ),
                          )
                        ],
                      ),
                      verticalHeight(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            // spacing: 2,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.all(5).copyWith(right: 12),
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                    color: AppColor.primaryColor,
                                    shape: BoxShape.circle),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    ImagePath.paypal,
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                              const LargeText(largeText: "PayPal")
                            ],
                          ),
                          const Flexible(
                            child: SmallText(
                                textColor: AppColor.whiteColor,
                                smallText: "78963521450888 "),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const PlaceOdredWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
