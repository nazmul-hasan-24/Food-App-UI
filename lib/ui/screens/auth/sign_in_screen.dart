import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.12,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColor.primaryColor,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          ImagePath.cup,
                          height: 60,
                          width: 60,
                        )
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 12,
                  // ),
                  verticalHeight(12),
                  const Text(
                    "FoodGrid",
                    style:
                        TextStyle(fontSize: 24, color: AppColor.primaryColor),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Deliver favorite food",
                    style: TextStyle(fontSize: 14, color: AppColor.whiteColor),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Login to your account",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColor.whiteColor),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: "Email",
                              fillColor: const Color.fromARGB(255, 46, 43, 43),
                              filled: true,
                              hintStyle: const TextStyle(
                                  color: AppColor.philippineGray)),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              hintText: "Password",
                              fillColor: const Color.fromARGB(255, 46, 43, 43),
                              filled: true,
                              hintStyle: const TextStyle(
                                  color: AppColor.philippineGray)),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        const Text(
                          "Or Continue With",
                          style: TextStyle(
                              color: AppColor.whiteColor, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 15),
                              margin: EdgeInsets.zero,
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 46, 43, 43),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Wrap(
                                spacing: 10.0,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  // ListTile(
                                  //   titleAlignment: ListTileTitleAlignment.center,
                                  //   contentPadding:
                                  //       const EdgeInsets.symmetric(horizontal: 15)
                                  //          'assets/images/google-logo.png',
                                  Image.asset(
                                    ImagePath.fbLogo,
                                    height: 30,
                                    width: 20,
                                  ),
                                  const Text(
                                    "Facebook",
                                    style:
                                        TextStyle(color: AppColor.whiteColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 15),
                              margin: EdgeInsets.zero,
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 46, 43, 43),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Wrap(
                                spacing: 10.0,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  // ListTile(
                                  //   titleAlignment: ListTileTitleAlignment.center,
                                  //   contentPadding:
                                  //       const EdgeInsets.symmetric(horizontal: 15)
                                  //          'assets/images/google-logo.png',
                                  Image.asset(
                                    ImagePath.googleLog,
                                    height: 30,
                                    width: 20,
                                  ),
                                  const Text(
                                    "Google",
                                    style:
                                        TextStyle(color: AppColor.whiteColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Forgot your password?",
                            style: TextStyle(
                                color: AppColor.primaryColor, fontSize: 15),
                          ),
                        ),
                        Container(
                          width: 185,
                          height: 1.5,
                          color: AppColor.primaryColor,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButtonWidget(
                          text: "Next",
                          buttonBackGrounColor: AppColor.primaryColor,
                          onTab: () {
                            Get.offAll(() => const MainBottomNavScreen());
                          },
                        ),
                      ],
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
