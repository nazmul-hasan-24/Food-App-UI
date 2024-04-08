import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/popular_menu_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/res_list_screen.dart';
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
    final height = MediaQuery.of(context).size.height;
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
                  const AppBarWidget(),
                  verticalHeight(10),
                  const CarouseSliderWidget(),
                  verticalHeight(12),
                  SectionTitle(
                    title: "Newest",
                    onTap: () {
                      Get.to(
                        () => const RestaurantListScreen(
                          title: 'Popular Restaurant',
                        ),
                      );
                    },
                  ),
                  const NewRestaurantList(),
                  SectionTitle(
                    title: "Newest",
                    onTap: () {
                      Get.to(
                        () => const RestaurantListScreen(
                          title: "Popular Restaurant",
                        ),
                      );
                    },
                  ),
                  const NewRestaurantList(),
                  SectionTitle(
                    title: "Popular",
                    onTap: () {
                      Get.to(
                        () => const PopularMenuScreen(title: "Popular Menu"),
                      );
                    },
                  ),
                  const PopularRestaurantList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
