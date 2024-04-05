import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_grid_ui/ui/widgets/home/menu_card_widget.dart';

class PopularRestaurantList extends StatelessWidget {
  const PopularRestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 150,
      width: width * 0.95,
      child: PageView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const PopularMenuCardWidget();
        },
      ),
    );
  }
}
