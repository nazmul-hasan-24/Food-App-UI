import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/upload_image.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class ImagesPicker extends StatelessWidget {
  const ImagesPicker({super.key});

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
                  verticalHeight(15),
                  const HelperText(bigText: "Upload Your Photo Profile"),
                  verticalHeight(15),
                  const SmallText(
                      smallText:
                          "The data will be display in your account\nprofile for security"),
                  verticalHeight(15),
                  ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: Colors.white12,
                          minimumSize: const Size(double.infinity, 120)),
                      icon: const Icon(Icons.image_outlined),
                      label: const Text(
                        "From Gallery",
                        style: TextStyle(color: Colors.white),
                      )),
                  verticalHeight(15),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Colors.white12,
                        minimumSize: const Size(double.infinity, 120)),
                    icon: const Icon(Icons.camera_alt_outlined),
                    label: const Text(
                      "Take Photo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  verticalHeight(30),
                  Center(
                    child: ElevatedButtonWidget(
                      text: "Next",
                      buttonBackGrounColor: AppColor.primaryColor,
                      onTab: () {
                        Get.to(() => const UploadImage());
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
