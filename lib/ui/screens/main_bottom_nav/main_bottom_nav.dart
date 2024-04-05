import 'package:flutter/material.dart';
import 'package:food_grid_ui/presentation/controllers/main_nav_controller.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/home2.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/message_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/profile_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
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
              margin: const EdgeInsets.all(30).copyWith(left: 10, right: 10),
              // padding: const EdgeInsets.symmetric(horizontal: 10),
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
