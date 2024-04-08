import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/food_order_card_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/place_order_widget.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<FoodOrderCardWidget> orderList = List.generate(
      10,
      (index) =>
          FoodOrderCardWidget()); // Assuming FoodOrderCardWidget has a constructor
  //NOTE don't put const here

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                verticalHeight(20),
                const LargeText(largeText: "Order Details"),
                verticalHeight(17),
                Expanded(
                  child: ListView.builder(
                    itemCount: orderList.length, // Use orderList.length
                    itemBuilder: (context, int index) {
                      return Dismissible(
                        key: ValueKey<FoodOrderCardWidget>(orderList[index]),
                        background: Container(
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Icon(
                            Icons.delete,
                            color: AppColor.whiteColorFFF,
                          ),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            orderList.removeAt(index); // Remove from orderList
                          });
                        },
                        child: orderList[index],
                      );
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
