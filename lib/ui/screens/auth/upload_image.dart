import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/set_location.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(onTab: () {
                    Navigator.pop(context);
                  }),
                  verticalHeight(30),
                  const HelperText(bigText: "Upload Your Photo Profile"),
                  verticalHeight(15),
                  const SmallText(
                      smallText:
                          "The data will be display in your account\nprofile for security"),
                  verticalHeight(15),
                  Center(
                    child: Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                          // color: Colors.indigo,
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                        ImagePath.uploadPhoto,
                        // height: 60,
                        // width: 60,
                      ),
                    ),
                  ),
                  verticalHeight(40),
                  Center(
                    child: ElevatedButtonWidget(
                      buttonBackGrounColor: AppColor.primaryColor,
                      text: "Next",
                      onTab: () {
                        Get.to(() => const SetLocation());
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
