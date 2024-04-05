import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/review_screens/deliver_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/filled_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class TalkingScreen extends StatelessWidget {
  const TalkingScreen({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(12.0).copyWith(top: 120, bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
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
                          ImagePath.myPhoto,
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
                verticalHeight(height * 0.025),
                LargeText(largeText: name),
                verticalHeight(height * 0.025),
                const SmallText(smallText: "15.6 Min"),
                verticalHeight(height * 0.2),
                Wrap(
                  spacing: 15,
                  children: [
                    filledButtonWidget(
                        onPress: () {
                          Get.to(() => const DeliverScreen());
                        },
                        widget: const Icon(
                          Icons.volume_off,
                        ),
                        color: AppColor.primaryColor),
                    filledButtonWidget(
                        onPress: () {},
                        widget: const Text('X'),
                        color: Colors.red)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
