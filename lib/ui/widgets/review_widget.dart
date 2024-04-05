import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';

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
        padding: const EdgeInsets.all(12.0).copyWith(top: 120, bottom: 70),
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
            verticalHeight(20),
            const LargeText(largeText: "Thank You!"),
            verticalHeight(20),
            LargeText(largeText: bigText!),
            verticalHeight(20),
            SmallText(smallText: smallText!),
            verticalHeight(20),
            Wrap(
              spacing: 15,
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star_rounded,
                        size: 40,
                        color: AppColor.primaryColor,
                      )),
            ),
            const Spacer(),
            TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.all(18),
                prefixIconColor: AppColor.primaryColor,
                hintText: "Leave feedback",
                fillColor: const Color.fromARGB(255, 37, 36, 36),
                hintStyle: const TextStyle(color: Colors.white54),
                filled: true,
                prefixIcon: const Icon(Icons.note_alt_outlined),
              ),
            ),
            verticalHeight(18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButtonWidget(
                  text: "Submit",
                  onTab: submitOnPressed,
                  textColour: AppColor.blackColor2,
                  width: 200,
                ),
                ElevatedButtonWidget(
                  buttonBackGrounColor: AppColor.lightBlack,
                  text: "Skip",
                  onTab: skipOnPressed,
                  textColour: AppColor.primaryColor,
                  width: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
