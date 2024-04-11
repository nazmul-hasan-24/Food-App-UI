import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/call_ringing_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            ImagePath.locationBack,
            fit: BoxFit.cover,
          ),
          verticalSpace(Dimensions.height50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(Dimensions.height44),
              BackButtonWidget(onTab: () => Get.back()),
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.width24)
                    .copyWith(bottom: Dimensions.height10),
                height: Dimensions.height242,
                // width: 364,
                // constraints: const BoxConstraints(minWidth: 300),
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height20,
                  horizontal: Dimensions.width15,
                ),
                decoration: BoxDecoration(
                    color: AppColor.backgroundColor0d0d,
                    borderRadius: BorderRadius.circular(Dimensions.font12),
                    image:
                        DecorationImage(image: AssetImage(ImagePath.trackBak))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(
                      smallText: "Track Orders",
                      fontSize: Dimensions.height14,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimensions.width10),
                      alignment: Alignment.center,
                      height: 75,
                      width: 364,
                      decoration: BoxDecoration(
                          color: AppColor.backgroundColor2525,
                          borderRadius:
                              BorderRadius.circular(Dimensions.height15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // alignment: WrapAlignment.start,
                        // spacing: Dimensions.iconWidth24,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            // radius: 15,
                            // backgroundColor: Color(0xFFFFE14D),
                            child: Image.asset(
                              ImagePath.mentor,
                              height: 58,
                              width: 68,
                            ),
                          ),
                          horizontal(Dimensions.width10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: BigText(
                                  largeText: "Tanvir islam Rubel",
                                  fontSize: Dimensions.height15,
                                ),
                              ),
                              Flexible(
                                child: SmallText(
                                  smallText: "15 minutes on the way",
                                  fontSize: Dimensions.height14,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ElevatedButton.icon(
                              style: IconButton.styleFrom(
                                minimumSize: Size(
                                  Dimensions.screenWidth / 2.1,
                                  Dimensions.height60,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.height10,
                                  ),
                                ),
                                backgroundColor: AppColor.primaryColor,
                              ),
                              onPressed: () {
                                Get.to(() =>
                                    const CallRingingScreen(name: "Hasan"));
                              },
                              label: BigText(
                                largeText: "Call",
                                fontSize: Dimensions.height15,
                                color: AppColor.backgroundColor2525,
                              ),
                              icon: Icon(
                                Icons.call,
                                size: Dimensions.height20,
                                color: AppColor.backgroundColor2525,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          iconSize: Dimensions.height18,
                          style: IconButton.styleFrom(
                              minimumSize: Size(
                                Dimensions.screenWidth / 3.69,
                                Dimensions.height60,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                Dimensions.height10,
                              )),
                              backgroundColor: AppColor.backgroundColor2525),
                          onPressed: () {},
                          icon: Icon(
                            Icons.email,
                            size: Dimensions.height18,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
