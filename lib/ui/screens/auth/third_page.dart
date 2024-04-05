import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/sign_in_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 14, 13, 13),
      body: BodyBackground(
        child: Padding(
          padding: const EdgeInsets.all(15.0).copyWith(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                child: Image.asset(
                  ImagePath.food1,
                  height: 250,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Find Food Grid is Where Your Comfor Food Here ",
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.whiteColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Enjoy a fast and smoth food delivery at your doorshetp ",
                style: TextStyle(fontSize: 15, color: AppColor.philippineGray),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButtonWidget(
                text: "Next",
                buttonBackGrounColor: AppColor.primaryColor,
                onTab: () {
                  Get.to(() => const SignInScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
