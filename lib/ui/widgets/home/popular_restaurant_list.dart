import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_grid_ui/ui/screens/detail_menu_screen.dart';
import 'package:food_grid_ui/ui/widgets/home/menu_card_widget.dart';
import 'package:get/get.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

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
          return GestureDetector(
              onTap: () => Get.to(
                    () => const DetailMenuScreen(),
                  ),
              child: const PopularMenuCardWidget());
        },
      ),
    );
  }
}
