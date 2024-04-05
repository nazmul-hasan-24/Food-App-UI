import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/bio_page.dart';
import 'package:food_grid_ui/ui/screens/auth/sign_in_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChacked = true;
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
                  verticalHeight(12),
                  const Text(
                    "Deliver favorite food",
                    style: TextStyle(fontSize: 14, color: AppColor.whiteColor),
                  ),
                  verticalHeight(30),
                  const Text(
                    "Sign Up For Free",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColor.whiteColor),
                  ),
                  verticalHeight(25),
                  Form(
                    child: Column(
                      children: [
                        const CustomTextFormField(
                          textInputType: TextInputType.text,
                          hintText: "User name",
                          prefixIcon: Icons.person,
                        ),
                        // TextFormField(
                        //    decoration: const InputDecoration(
                        //     prefixIcon: Padding(
                        //       padding: EdgeInsets.only(left: 22, right: 14),
                        //       child: Icon(Icons.person, color: brownColor,),
                        //     ),
                        //     prefixIconColor: brownColor,
                        //       border: OutlineInputBorder(
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(8.0))),
                        //       hintText: "User name",
                        //       fillColor: Color.fromARGB(255, 46, 43, 43),
                        //       filled: true,
                        //       hintStyle: TextStyle(color: brownColor)),
                        // ),
                        verticalHeight(10),
                        const CustomTextFormField(
                          textInputType: TextInputType.emailAddress,
                          hintText: "Email",
                          prefixIcon: Icons.email,
                        ),
                        verticalHeight(10),
                        const CustomTextFormField(
                          textInputType: TextInputType.text,
                          hintText: "Password",
                          prefixIcon: Icons.lock,
                          suffixIcon: Icons.remove_red_eye_rounded,
                        ),
                        verticalHeight(15),
                        SizedBox(
                          height: 28,
                          width: double.infinity,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            minVerticalPadding: 0.2,
                            leading: Checkbox(
                              value: isChacked,
                              onChanged: (value) {
                                setState(() {
                                  isChacked = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              activeColor: AppColor.primaryColor,
                              checkColor: AppColor.blackColor2,
                            ),
                            title: const Text(
                              "Keep Me Signed In",
                              style: TextStyle(color: AppColor.philippineGray),
                            ),
                          ),
                        ),
                        verticalHeight(15),
                        SizedBox(
                          width: double.infinity,
                          child: ListTile(
                            minVerticalPadding: 0.2,
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: isChacked,
                              onChanged: (value) {
                                setState(() {
                                  isChacked = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              activeColor: AppColor.primaryColor,
                              checkColor: AppColor.blackColor2,
                            ),
                            title: const Text(
                              "Email Me About Special Pricing",
                              style: TextStyle(
                                color: AppColor.philippineGray,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 18,
                        ),

                        ElevatedButtonWidget(
                          text: "Create",
                          buttonBackGrounColor: AppColor.primaryColor,
                          onTab: () {
                            Get.to(() => const BioPage());
                          },
                        ),
                        verticalHeight(15),
                        InkWell(
                          onTap: () {
                            Get.to(() => const SignInScreen());
                          },
                          child: const Text(
                            "already have an account?",
                            style: TextStyle(color: AppColor.philippineGray),
                          ),
                        ),
                        Container(
                          width: 185,
                          height: 1.5,
                          color: AppColor.primaryColor,
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
