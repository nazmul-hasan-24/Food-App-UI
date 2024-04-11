import 'package:flutter/material.dart';
import 'package:food_grid_ui/presentation/controllers/main_nav_controller.dart';
import 'package:food_grid_ui/ui/screens/chat_details_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class MessingScreen extends StatelessWidget {
  const MessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          Get.find<MainBottomNavController>().backToHome();
        },
        child: Scaffold(
          backgroundColor: AppColor.backgroundColor0d0d,
          body: BodyBackground(
            child: Container(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimensions.width25).copyWith(
                top: Dimensions.height44,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(
                    onTab: () {
                      Get.back();
                    },
                  ),
                  verticalSpace(Dimensions.height18),
                  Text(
                    "Chat",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  verticalSpace(13),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Get.to(
                            () => const ChatScreen(
                              name: "Nazmul",
                            ),
                          ),
                          child: Container(
                            // alignment: Alignment.center,
                            padding: EdgeInsets.all(
                              Dimensions.font12,
                            ),
                            constraints: BoxConstraints.tight(
                              Size.fromHeight(
                                Dimensions.height100,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0,
                                color: AppColor.backgroundColor2525,
                              ),
                              borderRadius: BorderRadius.circular(
                                Dimensions.font12,
                              ),
                              color: AppColor.lightBlack,
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.height18),
                                  child: Image.asset(
                                    fit: BoxFit.cover,
                                    ImagePath.myPhoto,
                                    width: Dimensions.screenWidth / 5.447,
                                    height: Dimensions.screenHeight / 11.636,
                                  ),
                                ),
                                horizontal(Dimensions.width10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        BigText(
                                          largeText: "Nazmul Hasan",
                                          fontSize: Dimensions.height18,
                                        ),
                                        horizontal(
                                            Dimensions.screenWidth / 6.8),
                                        SmallText(
                                          smallText: '14:33',
                                          fontSize: Dimensions.height14,
                                        )
                                      ],
                                    ),
                                    verticalSpace(Dimensions.height10),
                                    SmallText(
                                      fontSize: Dimensions.height14,
                                      smallText: "Your order just arrived",
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (_, __) {
                        return verticalSpace(14);
                      },
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
