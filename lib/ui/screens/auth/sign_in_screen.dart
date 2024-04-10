import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/sign_up_page.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Stack(
          children: [
            Image.asset(ImagePath.recBack),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width25),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalHeight(Dimensions.height80),
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
                    verticalHeight(Dimensions.height10),
                    Text(
                      "FoodGrid",
                      style: TextStyle(
                        fontSize: Dimensions.height40,
                        color: AppColor.primaryColor,
                        fontFamily: 'IBM Plex Mono',
                      ),
                    ),
                    verticalHeight(Dimensions.height10),
                    SmallText(
                      smallText: "Deliver favorite food",
                      fontSize: Dimensions.height13,
                      fontWeight: FontWeight.w500,
                      textColor: AppColor.whiteColorFFF,
                    ),
                    verticalHeight(Dimensions.height25),
                    LargeText(
                      largeText: "Login to your account",
                      fontSize: Dimensions.height22,
                    ),
                    verticalHeight(Dimensions.height25),
                    Form(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                            child: TextFormField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.height8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.height8),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.height8),
                                ),
                                hintText: "Email",
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width25,
                                  vertical: Dimensions.height18,
                                ),
                                fillColor: AppColor.backgroundColor2525,
                                filled: true,
                                hintStyle: TextStyle(
                                  color: AppColor.philippineGrayC4C4,
                                  fontSize: Dimensions.height14,
                                ),
                              ),
                            ),
                          ),
                          verticalHeight(Dimensions.font12),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width25,
                                vertical: Dimensions.height18,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.height8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.height8),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.height8),
                              ),
                              hintText: "Password",
                              fillColor: AppColor.backgroundColor2525,
                              filled: true,
                              hintStyle: TextStyle(
                                color: AppColor.philippineGrayC4C4,
                                fontSize: Dimensions.height14,
                              ),
                            ),
                          ),
                          verticalHeight(Dimensions.height18),
                          LargeText(
                            largeText: "Or Continue With",
                            fontSize: Dimensions.font12,
                          ),
                          verticalHeight(Dimensions.height18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(left: 15),
                                margin: EdgeInsets.zero,
                                height: Dimensions.buttonHeight60,
                                width: Dimensions.butonWidth171,
                                decoration: BoxDecoration(
                                    color: AppColor.backgroundColor2525,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Wrap(
                                  spacing: Dimensions.width12,
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImagePath.fbLogo,
                                      height: Dimensions.height30,
                                      width: Dimensions.iconWidth30,
                                    ),
                                    LargeText(
                                      largeText: "Facebook",
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.height14,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(left: 15),
                                margin: EdgeInsets.zero,
                                height: Dimensions.buttonHeight60,
                                width: Dimensions.butonWidth171,
                                decoration: BoxDecoration(
                                    color: AppColor.backgroundColor2525,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Wrap(
                                  spacing: Dimensions.width12,
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImagePath.googleLog,
                                      height: Dimensions.height30,
                                      width: Dimensions.iconWidth30,
                                    ),
                                    LargeText(
                                      largeText: "Google",
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.height14,
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
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                decorationThickness: 2,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.primaryColor,
                                color: AppColor.primaryColor,
                                fontSize: Dimensions.font12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButtonWidget(
                            text: "Next",
                            textColour: AppColor.backgroundColor0d0d,
                            buttonBackGrounColor: AppColor.primaryColor,
                            onTab: () {
                              Get.offAll(
                                () => const SignUpScreen(),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
