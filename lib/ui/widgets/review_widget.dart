import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget(
      {super.key,
      this.bigText = "Enjoy Your Meal",
      this.smallText = "Please Rate Your Last Driver",
      required this.photoString,
      required this.skipOnPressed,
      required this.submitOnPressed});
  final String? bigText;
  final String? smallText;
  final String photoString;
  final dynamic skipOnPressed;
  final dynamic submitOnPressed;

  @override
  Widget build(BuildContext context) {
    return BodyBackground(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width25)
            .copyWith(top: Dimensions.height125, bottom: Dimensions.height40),
        child: Column(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    scale: 2,
                    filterQuality: FilterQuality.medium,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      photoString,
                    ),
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.primaryColor,
                    width: 3,
                  ),
                ),
                // child: Image.asset(
                //   ImagePath.myPhoto,
                // ),
              ),
            ),
            verticalSpace(20),
            BigText(
              largeText: "Thank You!",
              fontSize: Dimensions.height20,
            ),
            verticalSpace(Dimensions.height20),
            BigText(largeText: bigText!),
            verticalSpace(20),
            SmallText(
              smallText: smallText!,
              fontSize: Dimensions.height20,
            ),
            verticalSpace(20),
            Wrap(
              spacing: Dimensions.width12,
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star_rounded,
                        size: 40,
                        color: AppColor.primaryColor,
                      )),
            ),
            const Spacer(),
            const CustomTextFormField(
              hintText: "Leave feedback",
              prefixIcon: Icons.rate_review_outlined,
              prefixIconColor: AppColor.primaryColor,
            ),
            verticalSpace(18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: ElevatedButtonWidget(
                    height: Dimensions.height70,
                    text: "Submit",
                    onTab: submitOnPressed,
                    textColour: AppColor.textBlack000,
                    width: Dimensions.screenHeight / 1.754,
                  ),
                ),
                horizontal(Dimensions.width12),
                ElevatedButtonWidget(
                  height: Dimensions.height70,
                  buttonBackGrounColor: AppColor.lightBlack,
                  text: "Skip",
                  onTab: skipOnPressed,
                  width: Dimensions.width112,
                  textColour: const Color(0xFFFEAD1D),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
