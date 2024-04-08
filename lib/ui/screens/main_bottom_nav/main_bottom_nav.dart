import 'package:flutter/material.dart';
import 'package:food_grid_ui/presentation/controllers/main_nav_controller.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/home2.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/message_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/profile_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final List<Widget> _screenList = const [
    Home2(),
    ProfileScreen(),
    CartScreen(),
    MessingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          GetBuilder<MainBottomNavController>(
            builder: (controller) {
              return _screenList[controller.currentIndex];
            },
          ),
          // const Expanded(child: HomeScreen()),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimensions.width25,
              ).copyWith(bottom: Dimensions.height14),
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width15,
                vertical: Dimensions.height18,
              ),
              decoration: BoxDecoration(
                  color: AppColor.backgroundColor2525,
                  borderRadius: BorderRadius.circular(
                    Dimensions.height18,
                  )),
              height: 70,
              child: GetBuilder<MainBottomNavController>(
                builder: (mainBottomNavController) {
                  return GNav(
                    onTabChange: (value) {
                      mainBottomNavController.changeIndex(value);
                    },
                    selectedIndex: mainBottomNavController.currentIndex,

                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.whiteColorFFF,
                      fontSize: Dimensions.font12,
                    ),
                    tabBorderRadius: Dimensions.height14,
                    curve: Curves.easeOutExpo, // tab animation curves
                    duration: const Duration(
                      milliseconds: 700,
                    ), // tab animation duration
                    gap: Dimensions
                        .width10, // the tab button gap between icon and text

                    color: AppColor.primaryColor, // unselected icon color

                    activeColor:
                        AppColor.primaryColor, // selected icon and text color

                    iconSize: Dimensions.iconWidth24, // tab button icon size

                    tabBackgroundColor: const Color(0xFF4B4427)
                        .withOpacity(0.28), // selected tab background color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 8,
                    ), // navigation bar padding
                    tabs: [
                      GButton(
                        active: true,
                        onPressed: () {},
                        icon: Icons.home,
                        iconColor: AppColor.primaryColor,
                        textColor: AppColor.whiteColorFFF,
                        text: 'Home',
                      ),
                      GButton(
                        // padding:
                        // EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                        onPressed: () {},
                        icon: Icons.person_outline,
                        text: 'Profile',
                        iconColor: AppColor.primaryColor,
                        textColor: AppColor.whiteColorFFF,
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
                        textColor: AppColor.whiteColorFFF,
                      ),
                      GButton(
                        onPressed: () {},
                        // padding: const EdgeInsets.all(20),
                        icon: Icons.message_outlined,
                        text: 'Chat',
                        iconColor: AppColor.primaryColor,
                        textColor: AppColor.whiteColorFFF,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: GetBuilder<MainBottomNavController>(builder: (cont) {
      //   return SafeArea(
      //     child: Container(
      //       height: 70,
      //       margin: const EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //           color: AppColour.lightBlack,
      //           borderRadius: BorderRadius.circular(15)),
      //       child: BottomNavigationBar(
      //         onTap: cont.changeIndex,
      //         currentIndex: cont.currentIndex,
      //         type: BottomNavigationBarType.fixed,
      //         showUnselectedLabels: true,
      //         showSelectedLabels: true,
      //         selectedFontSize: 0,
      //         unselectedFontSize: 0,
      //         selectedItemColor: AppColour.primaryColor,
      //         unselectedItemColor: const Color.fromARGB(255, 202, 197, 195),
      //         elevation: 0,
      //         selectedIconTheme:
      //             const IconThemeData(color: AppColour.primaryColor),
      //         backgroundColor: Colors.transparent,
      //         items: const [
      //           BottomNavigationBarItem(
      //             tooltip: "Home",
      //             icon: Icon(Icons.home),
      //             label: '',
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Icon(Icons.person),
      //             label: '',
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Icon(Icons.shopping_cart),
      //             label: '',
      //           ),
      //           BottomNavigationBarItem(
      //             icon: Icon(Icons.message),
      //             label: '',
      //           )
      //         ],
      //       ),
      //     ),
      //   );
      // }),
    );
  }
}
