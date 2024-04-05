import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/ringing_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Navigator.pop(context);
                  },
                ),
                verticalHeight(12),
                const LargeText(
                  largeText: 'Chat',
                ),
                verticalHeight(18),
                Container(
                  // height: height * 0.15,
                  // width: width * 0.9,
                  padding: const EdgeInsets.all(12),
                  constraints: BoxConstraints.tight(
                    Size.fromHeight(height * 0.14),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.lightBlack,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          ImagePath.myPhoto,
                        ),
                      ),
                      horizontal(width * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LargeText(largeText: name),
                          verticalHeight(8),
                          const SmallText(smallText: "Online")
                        ],
                      ),
                      horizontal(width * 0.25),
                      IconButton.filled(
                        onPressed: () {
                          Get.to(
                            () => const RingingScreen(
                              name: 'Nazmul Hasan',
                            ),
                          );
                        },
                        icon: const Icon(Icons.call),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  constraints: BoxConstraints.tight(
                    Size.fromHeight(height * 0.1),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0, color: Colors.transparent),
                    // borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 4,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'OK, I\'m wating a minute',
                            // contentPadding: EdgeInsets.all(6),
                            filled: true,
                            fillColor: AppColor.lightBlack,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17),
                                bottomLeft: Radius.circular(17),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 0, color: Colors.transparent),
                            color: const Color.fromARGB(255, 46, 45, 45),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(17),
                              bottomRight: Radius.circular(17),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(11.17),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.send,
                                color: AppColor.primaryColor,
                                fill: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
