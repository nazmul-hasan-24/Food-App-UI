import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/voucher_promo_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/widgets/review_widget.dart';
import 'package:get/get.dart';

class RestaurantReviewScreen extends StatelessWidget {
  const RestaurantReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReviewWidget(
          photoString: ImagePath.resLogo1,
          smallText: 'Please Rate Your Restaurant',
          submitOnPressed: () {},
          skipOnPressed: () => Get.to(
            () => const VoucherPromoScreen(),
          ),
        ),
      ),
    );
  }
}
