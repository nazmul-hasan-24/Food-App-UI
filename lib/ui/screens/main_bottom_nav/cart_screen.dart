import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/screens/payment_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/increment_decrement_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/place_order_widget.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<IncrementDecrementWidget> orderList = List.generate(
      10,
      (index) =>
          IncrementDecrementWidget()); // Assuming FoodOrderCardWidget has a constructor
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
                verticalSpace(Dimensions.height20),
                BigText(
                  largeText: "Order Details",
                  fontSize: Dimensions.height25,
                ),
                verticalSpace(17),
                Expanded(
                  child: ListView.builder(
                    itemCount: orderList.length, // Use orderList.length
                    itemBuilder: (context, int index) {
                      return Dismissible(
                        key: ValueKey<IncrementDecrementWidget>(
                            orderList[index]),
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
                PlaceOdredWidget(
                  onTab: () => Get.to(() => const PaymentsScreen()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
