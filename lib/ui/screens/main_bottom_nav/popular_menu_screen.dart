import 'package:flutter/material.dart';
import 'package:food_grid_ui/presentation/controllers/main_nav_controller.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/message_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/profile_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/app_bar.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/home/menu_card_widget.dart';
import 'package:food_grid_ui/ui/widgets/search_widget.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class PopularMenuScreen extends StatefulWidget {
  const PopularMenuScreen({super.key, required this.title});
  final String title;

  @override
  State<PopularMenuScreen> createState() => _PopularMenuScreenState();
}

class _PopularMenuScreenState extends State<PopularMenuScreen> {
  final List<Widget> _screen = const [
    PopularMenuLists(),
    ProfileScreen(),
    CartScreen(),
    MessingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GetBuilder<MainBottomNavController>(builder: (controller) {
              return Expanded(child: _screen[controller.currentIndex]);
            }),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 59, 59, 57),
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(10),
                  left: Radius.circular(10),
                ),
              ),
              height: 70,
              child: GetBuilder<MainBottomNavController>(
                builder: (mainBottomNavController) {
                  return GNav(
                    onTabChange: (value) {
                      mainBottomNavController.changeIndex(value);
                    },
                    selectedIndex: mainBottomNavController.currentIndex,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColor.whiteColor,
                        fontSize: 13),
                    tabBorderRadius: 10,
                    curve: Curves.easeOutExpo, // tab animation curves
                    duration: const Duration(
                        milliseconds: 500), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: AppColor.primaryColor, // unselected icon color
                    activeColor:
                        AppColor.primaryColor, // selected icon and text color
                    iconSize: 20, // tab button icon size
                    tabBackgroundColor: Colors.amber.shade200
                        .withOpacity(0.1), // selected tab background color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 5), // navigation bar padding
                    tabs: [
                      GButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(11),
                        icon: Icons.home,
                        iconColor: AppColor.primaryColor,
                        textColor: AppColor.whiteColor,
                        text: 'Home',
                      ),
                      GButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(11),
                        icon: Icons.person_outline,
                        text: 'Profile',
                        iconColor: AppColor.primaryColor,
                        textColor: AppColor.whiteColor,
                      ),
                      const GButton(
                        // onPressed: () {
                        //   Get.to(
                        //     () => const CartScreen(),
                        //   );
                        // },
                        padding: EdgeInsets.all(11),
                        icon: Icons.shopping_cart_checkout,
                        text: 'Cart',
                        iconColor: AppColor.primaryColor,
                        textColor: AppColor.whiteColor,
                      ),
                      GButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(11),
                        icon: Icons.message_outlined,
                        text: 'Chat',
                        iconColor: AppColor.primaryColor,
                        textColor: AppColor.whiteColor,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularMenuLists extends StatelessWidget {
  const PopularMenuLists({super.key, this.title = 'Popular'});
  final String? title;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BodyBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarWidget(),
            verticalHeight(10),
            Text(
              title!,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            verticalHeight(10),
            const SearchWidget(
              text: ['Pizza x', 'Snadwich x'],
            ),
            verticalHeight(10),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 150,
                    width: width * 0.95,
                    child: const PopularMenuCardWidget(),
                  );
                },
                separatorBuilder: (_, __) {
                  return verticalHeight(10);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
