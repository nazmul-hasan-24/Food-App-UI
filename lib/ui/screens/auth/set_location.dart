import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/profile_set_up_completed.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(onTab: () {
                  Navigator.pop(context);
                }),
                verticalHeight(15),
                const HelperText(bigText: "Set Your Location"),
                verticalHeight(15),
                const SmallText(
                    smallText:
                        "The data will be display in your account\nprofile for security"),
                verticalHeight(15),
                Container(
                  height: 150,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 8,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.yellow,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.redAccent,
                              fill: 0.8,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              "Your Location",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: const MaterialStatePropertyAll(
                                EdgeInsets.all(20)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            minimumSize: const MaterialStatePropertyAll(
                                Size(double.infinity, 40.0)),
                            backgroundColor: const MaterialStatePropertyAll(
                              Colors.white12,
                            )),
                        child: const Text(
                          "Set Location",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                verticalHeight(30),
                Center(
                  child: ElevatedButtonWidget(
                    text: "Next",
                    buttonBackGrounColor: AppColor.primaryColor,
                    onTab: () {
                      Get.to(
                        () => const ProfileSetpuCompleted(),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
