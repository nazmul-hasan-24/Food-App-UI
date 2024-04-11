import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/track_order_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              ImagePath.locationBack,
              fit: BoxFit.cover,
            ),
            verticalSpace(Dimensions.height50),
            Column(
              children: [
                verticalSpace(Dimensions.height33),
                Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: Dimensions.width15),
                    child: const CustomTextFormField(
                        hintText: "Find your location")),
                const Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimensions.width24)
                      .copyWith(bottom: Dimensions.height10),
                  height: Dimensions.height187,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height20,
                    horizontal: Dimensions.width15,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor0d0d,
                    borderRadius: BorderRadius.circular(Dimensions.font12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        smallText: "Your Location",
                        fontSize: Dimensions.height14,
                      ),
                      Row(
                        // alignment: WrapAlignment.start,
                        // spacing: Dimensions.iconWidth24,
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
                          horizontal(Dimensions.width10),
                          Flexible(
                            child: BigText(
                              largeText:
                                  "55/A mohammadpur, Dhaka 1207 Bangladesh",
                              fontSize: Dimensions.height15,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButtonWidget(
                        text: "Set Location",
                        onTab: () {
                          Get.to(
                            () => const TrackOrderScreen(),
                          );
                        },
                        width: double.infinity,
                        buttonBackGrounColor: AppColor.primaryColor,
                        textColour: AppColor.backgroundColor2525,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
