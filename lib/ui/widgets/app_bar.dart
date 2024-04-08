import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/notification_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LargeText(
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
        verticalHeight(Dimensions.height25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Dimensions.width293,
              height: 60,
              child: const CustomTextFormField(
                textInputType: TextInputType.none,
                prefixIcon: Icons.search,
                hintText: 'What do your want to order?',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: Dimensions.height52,
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
