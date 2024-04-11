import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/home_restaurant_list_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/popular_manu.dart';
import 'package:food_grid_ui/ui/screens/search_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/app_bar.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/carousel_slider_widget.dart';
import 'package:food_grid_ui/ui/widgets/home/new_restaurant_list.dart';
import 'package:food_grid_ui/ui/widgets/home/popular_restaurant_list.dart';
import 'package:food_grid_ui/ui/widgets/home/section_title.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool onTap = false;
  bool showPage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width25, vertical: Dimensions.height18),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(
                    onTap: () => Get.to(
                      () => const SearchScreen(),
                    ),
                  ),
                  verticalSpace(10),
                  const CarouseSliderWidget(),
                  verticalSpace(12),
                  SectionTitle(
                    title: "Newest Restaurant",
                    onTap: () {
                      Get.to(
                        () => const RestaurantListScreen(),
                      );
                    },
                  ),
                  const NewRestaurantList(),
                  SectionTitle(
                    title: "Popular Restaurant",
                    onTap: () {
                      Get.to(
                        () => const RestaurantListScreen(),
                      );
                    },
                  ),
                  const NewRestaurantList(),
                  SectionTitle(
                    title: "Popular",
                    onTap: () {
                      Get.to(
                        () => const PopularManuListScreenH(),
                      );
                    },
                  ),
                  const MenuList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
