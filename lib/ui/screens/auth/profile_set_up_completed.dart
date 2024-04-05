import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:get/get.dart';

class ProfileSetpuCompleted extends StatelessWidget {
  const ProfileSetpuCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              verticalHeight(120),
              CircleAvatar(
                radius: 40,
                child: Image.asset(ImagePath.done),
              ),
              verticalHeight(20),
              const Text(
                "Congrast!",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              verticalHeight(14),
              const Text(
                "Your Profile Is Ready To Use!",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              verticalHeight(40),
              Center(
                child: ElevatedButtonWidget(
                  text: "Try Order",
                  buttonBackGrounColor: AppColor.primaryColor,
                  width: 160,
                  onTab: () {
                    Get.offAll(() => const MainBottomNavScreen());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
