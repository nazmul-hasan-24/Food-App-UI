import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/notification_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 140,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Find Your\nFavourite Food',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    () => const NotificationScreen(),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white12,
                  ),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    color: AppColor.primaryColor,
                    size: width * 0.09,
                  ),
                ),
              )
            ],
          ),
          verticalHeight(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.78,
                child: const CustomTextFormField(
                  textInputType: TextInputType.none,
                  prefixIcon: Icons.search,
                  hintText: 'What do your want to order?',
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white12,
                  ),
                  child: Icon(
                    Icons.filter_list,
                    size: width * 0.09,
                    color: AppColor.primaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
