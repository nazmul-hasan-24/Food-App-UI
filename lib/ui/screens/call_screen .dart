import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/review_screens/finish_order_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/filled_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
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
                verticalSpace(height * 0.025),
                BigText(largeText: name),
                verticalSpace(height * 0.025),
                const SmallText(smallText: "15.6 Min"),
                verticalSpace(height * 0.2),
                Wrap(
                  spacing: 15,
                  children: [
                    iconButtonWidget(
                      onPress: () {},
                      widget: const Icon(
                        Icons.volume_off,
                        color: Color(0xFFFFCC00),
                      ),
                      color: const Color(0xFF261F00),
                    ),
                    iconButtonWidget(
                      onPress: () {
                        Get.to(
                          () => const FinishOrderScreen(),
                        );
                      },
                      widget: const Text('X'),
                      color: const Color(0xFFFF4B4B),
                    )
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
