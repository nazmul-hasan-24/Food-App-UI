import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/explore_menu_with_filter.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/app_bar.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/home/menu_card_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:get/get.dart';

class ExploreMenuScreen extends StatelessWidget {
  const ExploreMenuScreen({super.key, this.title = ''});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: BodyBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width25)
              .copyWith(top: Dimensions.height44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBarWidget(
                onTap: () => Get.to(() => const ExploreMenuWithFilterScreen()),
              ),
              verticalSpace(16),
              BigText(
                largeText: "Popular Menu",
                fontSize: Dimensions.height22,
              ),
              verticalSpace(14),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 40,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const PopularMenuCardWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
