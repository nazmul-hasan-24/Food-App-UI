import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/explore_menu_with_filter.dart';
import 'package:food_grid_ui/ui/screens/notification_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget(
      {super.key, this.onTap, this.textInputType = TextInputType.none});
  final VoidCallback? onTap;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigText(
              largeText: 'Find your \nfavorite food',
              fontSize: Dimensions.height30,
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  () => const NotificationScreen(),
                );
              },
              child: Container(
                height: Dimensions.height46,
                width: Dimensions.width47,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height13),
                  color: AppColor.backgroundColor2525,
                ),
                child: Icon(
                  Icons.notifications_active_outlined,
                  color: AppColor.primaryColor,
                  size: Dimensions.iconWidth24,
                ),
              ),
            )
          ],
        ),
        verticalSpace(Dimensions.height25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Dimensions.width293,
              height: Dimensions.height60,
              child: CustomTextFormField(
                onTap: onTap,
                textInputType: textInputType,
                prefixIcon: Icons.search,
                hintText: 'What do your wanna order?',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const ExploreMenuWithFilterScreen());
              },
              child: Container(
                height: Dimensions.height60,
                width: Dimensions.width61,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height10),
                  color: AppColor.backgroundColor2525,
                ),
                child: Icon(
                  Icons.filter_list,
                  size: Dimensions.width30,
                  color: AppColor.primaryColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
