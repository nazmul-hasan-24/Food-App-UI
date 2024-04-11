import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/widgets/review_widget.dart';
import 'package:get/get.dart';

class RateRestaurantScreen extends StatelessWidget {
  const RateRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReviewWidget(
          photoString: ImagePath.resLogo1,
          smallText: 'Please Rate Your Restaurant',
          submitOnPressed: () {},
          skipOnPressed: () => Get.to(
            () => const MainBottomNavScreen(),
          ),
        ),
      ),
    );
  }
}
