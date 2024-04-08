import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/photo_setup_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class UploadImageScreen extends StatelessWidget {
  const UploadImageScreen({super.key});

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
                    largeText: "Payment Method",
                    fontSize: Dimensions.width25,
                  ),
                  verticalHeight(Dimensions.height16),
                  SmallText(
                      fontSize: Dimensions.font12,
                      smallText:
                          "This data will be displayed in your account\n profile for security"),
                  verticalHeight(Dimensions.height40),
                  Container(
                    height: 138,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.font12),
                      color: AppColor.backgroundColor2525,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.photo,
                            size: Dimensions.height50,
                          ),
                        ),
                        LargeText(
                          largeText: "Form Gallery",
                          fontSize: Dimensions.height14,
                        ),
                      ],
                    ),
                  ),
                  verticalHeight(Dimensions.height20),
                  Container(
                    height: 138,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.font12),
                      color: AppColor.backgroundColor2525,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            size: Dimensions.height50,
                          ),
                        ),
                        LargeText(
                          largeText: "Take Photo",
                          fontSize: Dimensions.height14,
                        ),
                      ],
                    ),
                  ),
                  verticalHeight(Dimensions.height40),
                  Center(
                    child: ElevatedButtonWidget(
                      text: "Next",
                      textColour: AppColor.backgroundColor0d0d,
                      buttonBackGrounColor: AppColor.primaryColor,
                      onTab: () {
                        Get.to(() => const PhotoSetupScreen());
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

  Future<void> getLostData() async {
    final ImagePicker picker = ImagePicker();
    final LostDataResponse response = await picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    final List<XFile>? files = response.files;
    if (files != null) {
      // _handleLostFiles(files);
    } else {
      // _handleError(response.exception);
    }
  }
}
