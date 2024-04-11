import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/call_ringing_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Container(
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.width25).copyWith(
            top: Dimensions.height44,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.height20)),
          child: BodyBackground(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.back();
                  },
                ),
                verticalSpace(Dimensions.height18),
                BigText(
                  largeText: 'Chat',
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(18),
                Container(
                  height: Dimensions.screenHeight / 9.14,
                  // width: width * 0.9,
                  padding: const EdgeInsets.all(12),
                  // constraints: BoxConstraints.tight(
                  //   Size.fromHeight(Dimensions.height98),
                  // ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.lightBlack,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height18),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          ImagePath.myPhoto,
                          width: Dimensions.screenWidth / 5.447,
                          height: Dimensions.screenHeight / 11.636,
                        ),
                      ),
                      horizontal(Dimensions.width12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(largeText: name),
                          verticalSpace(8),
                          const SmallText(
                            smallText: "Online",
                          )
                        ],
                      ),
                      horizontal(Dimensions.width100),
                      IconButton.filled(
                        style: IconButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFF3A3A3A),
                        ),
                        onPressed: () {
                          Get.to(
                            () => const CallRingingScreen(
                              name: 'Nazmul Hasan',
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.call,
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  constraints: BoxConstraints.tight(
                    Size.fromHeight(Dimensions.height80),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIconConstraints:
                          BoxConstraints(minHeight: Dimensions.height80),
                      suffixIcon: Container(
                        width: Dimensions.width81,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(
                              Dimensions.height22,
                            ),
                          ),
                          color: const Color(0xFF404040),
                        ),
                        child: const Icon(
                          Icons.send,
                          size: 25.5,
                          color: Color(0xFFFFCC00),
                        ),
                      ),

                      hintStyle: TextStyle(
                          color: AppColor.textColor,
                          fontSize: Dimensions.height14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5),
                      hintText: 'OK, I\'m wating a minute',
                      // contentPadding: EdgeInsets.all(6),
                      filled: true,
                      fillColor: AppColor.backgroundColor2525,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                            BorderRadius.circular(Dimensions.height22),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
