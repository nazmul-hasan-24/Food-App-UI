import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/food_order_card_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/place_order_widget.dart';
import 'package:get/get.dart';

class ExploreMenuWithFilter extends StatefulWidget {
  const ExploreMenuWithFilter({super.key});

  @override
  State<ExploreMenuWithFilter> createState() => _ExploreMenuWithFilterState();
}

class _ExploreMenuWithFilterState extends State<ExploreMenuWithFilter> {
  List<FoodOrderCardWidget> orderList = List.generate(
      10,
      (index) =>
          FoodOrderCardWidget()); // Assuming FoodOrderCardWidget has a constructor
  //NOTE don't put const here

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {
                    Get.to(() => const MainBottomNavScreen());
                  },
                ),
                verticalHeight(Dimensions.height20),
                LargeText(
                  largeText: "Order Details",
                  fontSize: Dimensions.height25,
                ),
                verticalHeight(17),
                Expanded(
                  child: ListView.builder(
                    itemCount: orderList.length, // Use orderList.length
                    itemBuilder: (context, int index) {
                      return orderList[index];
                    },
                  ),
                ),
                const PlaceOdredWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
