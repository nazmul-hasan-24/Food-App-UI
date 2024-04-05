import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/review_screens/restaurant_review_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/widgets/review_widget.dart';
import 'package:get/get.dart';

class FoodReviewScreen extends StatelessWidget {
  const FoodReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReviewWidget(
          photoString: ImagePath.food3,
          submitOnPressed: () {},
          skipOnPressed: () => Get.to(
            () => const RestaurantReviewScreen(),
          ),
        ),
      ),
    );
  }
}
