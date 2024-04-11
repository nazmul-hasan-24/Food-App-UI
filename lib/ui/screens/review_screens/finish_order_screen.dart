import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/review_screens/rate_food_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/widgets/review_widget.dart';
import 'package:get/get.dart';

class FinishOrderScreen extends StatelessWidget {
  const FinishOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReviewWidget(
          photoString: ImagePath.myPhoto,
          bigText: 'Order Completed',
          submitOnPressed: () {},
          skipOnPressed: () => Get.to(
            () => const RateFoodScreen(),
          ),
        ),
      ),
    );
  }
}
