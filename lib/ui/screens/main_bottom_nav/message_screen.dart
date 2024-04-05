import 'package:flutter/material.dart';
import 'package:food_grid_ui/presentation/controllers/main_nav_controller.dart';
import 'package:food_grid_ui/ui/screens/chat_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          Get.find<MainBottomNavController>().backToHome();
        },
        child: Scaffold(
          body: BodyBackground(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButtonWidget(
                    onTab: () {},
                  ),
                  verticalHeight(18),
                  Text(
                    "Chat",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  verticalHeight(13),
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
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(12),
                            constraints: BoxConstraints.tight(
                              Size.fromHeight(height * 0.14),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.lightBlack,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    ImagePath.myPhoto,
                                  ),
                                ),
                                horizontal(width * 0.04),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const LargeText(
                                          largeText: "Nazmul Hasan",
                                        ),
                                        horizontal(width * 0.06),
                                        const SmallText(smallText: '14:33')
                                      ],
                                    ),
                                    verticalHeight(13),
                                    const SmallText(
                                        smallText: "Your order just arrived")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (_, __) {
                        return verticalHeight(14);
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
