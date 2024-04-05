import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/screens/auth/third_page.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:get/get.dart';

class OnBoding1 extends StatelessWidget {
  const OnBoding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 14, 13, 13),
      body: BodyBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              height: 250,
              child: Image.asset(ImagePath.food4),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Find Your Comfort",
              style: TextStyle(
                  fontSize: 24,
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Food here",
              style: TextStyle(
                  fontSize: 24,
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Here You can find chef or dish for every",
              style: TextStyle(fontSize: 15, color: AppColor.philippineGray),
            ),
            const Text(
              "Teste and color. Enjoy!",
              style: TextStyle(
                fontSize: 15,
                color: AppColor.philippineGray,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButtonWidget(
              text: "Next",
              buttonBackGrounColor: AppColor.primaryColor,
              onTab: () {
                Get.to(() => const ThirdPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
