import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/detail_product_screen.dart';
import 'package:food_grid_ui/ui/widgets/restaurant_card_widget.dart';
import 'package:get/get.dart';

class NewRestaurantList extends StatelessWidget {
  const NewRestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
        () => const DetailProductScreen(),
      ),
      child: SizedBox(
        height: 170,
        child: ListView.separated(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const RestaurantCard();
          },
          separatorBuilder: (_, __) {
            return const SizedBox(
              width: 8,
            );
          },
        ),
      ),
    );
  }
}
