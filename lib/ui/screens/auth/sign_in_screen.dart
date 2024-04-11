import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/reset_passord/reset_password_by_method.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Dimensions.height20,
            ),
          ),
          child: Stack(
            children: [
              Image.asset(ImagePath.recBack),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpace(Dimensions.height80),
                    Container(
                      height: size.height * 0.12,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColor.primaryColor,
                      ),
                      child: Image.asset(
                        ImagePath.cup,
                        height: Dimensions.height60,
                        width: Dimensions.width61,
                      ),
                    ),
                    verticalSpace(Dimensions.height10),
                    Text(
                      "FoodGrid",
                      style: TextStyle(
                        fontSize: Dimensions.height40,
                        color: AppColor.primaryColor,
                        fontFamily: 'IBM Plex Mono',
                      ),
                    ),
                    verticalSpace(Dimensions.height10),
                    SmallText(
                      smallText: "Deliver favorite food",
                      fontSize: Dimensions.height13,
                      fontWeight: FontWeight.w500,
                      textColor: AppColor.whiteColorFFF,
                    ),
                    verticalSpace(Dimensions.height25),
                    BigText(
                      largeText: "Login to your account",
                      fontSize: Dimensions.height22,
                    ),
                    verticalSpace(Dimensions.height25),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
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
                          verticalSpace(Dimensions.font12),
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
                          verticalSpace(Dimensions.height18),
                          BigText(
                            largeText: "Or Continue With",
                            fontSize: Dimensions.font12,
                          ),
                          verticalSpace(Dimensions.height18),
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
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.height8),
                                ),
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
                                    BigText(
                                      largeText: "Facebook",
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.height14,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding:
                                    EdgeInsets.only(left: Dimensions.width15),
                                margin: EdgeInsets.zero,
                                height: Dimensions.buttonHeight60,
                                width: Dimensions.butonWidth171,
                                decoration: BoxDecoration(
                                    color: AppColor.backgroundColor2525,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.height8)),
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
                                    BigText(
                                      largeText: "Google",
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.height14,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          verticalSpace(Dimensions.height18),
                          InkWell(
                            borderRadius:
                                BorderRadius.circular(Dimensions.width10),
                            radius: Dimensions.height15,
                            onTap: () {
                              Get.to(
                                () => const ResetPasswordByMethodScreen(),
                              );
                            },
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
                          verticalSpace(
                            Dimensions.height25,
                          ),
                          ElevatedButtonWidget(
                            text: "Login",
                            textColour: AppColor.backgroundColor0d0d,
                            buttonBackGrounColor: AppColor.primaryColor,
                            onTab: () {
                              Get.offAll(
                                () => const MainBottomNavScreen(),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
