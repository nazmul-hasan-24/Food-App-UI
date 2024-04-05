import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(12).copyWith(bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.back();
                  },
                ),
                verticalHeight(11),
                Text(
                  "Voucher Promo",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                verticalHeight(11),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 10,
                      itemBuilder: (context, int index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: index.isEven
                                  ? AppColor.primaryColor
                                  : Colors.cyan[500],
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.all(14),
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                fit: FlexFit.loose,
                                child: Image.asset(ImagePath.food2),
                              ),
                              horizontal(18),
                              Flexible(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const LargeText(
                                        largeText: "Special Deal For Octorber"),
                                    ElevatedButtonWidget(
                                      buttonBackGrounColor: AppColor.whiteColor,
                                      onTab: () {},
                                      // width: 140,
                                      width: 120,
                                      textColour: AppColor.primaryColor,
                                      fontSize: 15,

                                      text: "Buy Now",
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
