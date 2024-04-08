import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/profile_set_up_completed.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width25,
                  vertical: Dimensions.height44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(onTab: () {
                    Get.back();
                  }),
                  verticalHeight(Dimensions.height20),
                  LargeText(
                    largeText: "Set Your Location",
                    fontSize: Dimensions.width25,
                  ),
                  verticalHeight(Dimensions.height16),
                  SmallText(
                      fontSize: Dimensions.font12,
                      smallText:
                          "This data will be displayed in your account\n profile for security"),
                  verticalHeight(Dimensions.height70),
                  Container(
                    height: Dimensions.height187,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.height20,
                      horizontal: Dimensions.width15,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.backgroundColor2525,
                      borderRadius: BorderRadius.circular(Dimensions.font12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          alignment: WrapAlignment.start,
                          spacing: Dimensions.iconWidth24,
                          children: [
                            const CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xFFFFE14D),
                              child: Icon(
                                Icons.location_on,
                                color: Color(0xFFE86D28),
                                fill: 0.8,
                              ),
                            ),
                            LargeText(
                              largeText: "Your Locations",
                              fontSize: Dimensions.height16,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.all(Dimensions.font12),
                            ),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            minimumSize: MaterialStatePropertyAll(
                              Size(
                                double.infinity,
                                Dimensions.buttonHeight51,
                              ),
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                              Color(0xFF404040),
                            ),
                          ),
                          child: LargeText(
                            largeText: "Set Location",
                            fontSize: Dimensions.height16,
                          ),
                        )
                      ],
                    ),
                  ),
                  verticalHeight(30),
                  Center(
                    child: ElevatedButtonWidget(
                      text: "Next",
                      buttonBackGrounColor: AppColor.primaryColor,
                      onTab: () {
                        Get.to(
                          () => const ProfileSetpuCompleted(),
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
