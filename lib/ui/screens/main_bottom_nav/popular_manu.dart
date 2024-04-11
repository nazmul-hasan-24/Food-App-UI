import 'package:flutter/material.dart';
import 'package:food_grid_ui/presentation/controllers/main_nav_controller.dart';
import 'package:food_grid_ui/ui/screens/explore_menu_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/message_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/profile_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class PopularManuListScreenH extends StatefulWidget {
  const PopularManuListScreenH({super.key, this.title});
  final String? title;

  @override
  State<PopularManuListScreenH> createState() => _PopularManuListScreenHState();
}

class _PopularManuListScreenHState extends State<PopularManuListScreenH> {
  final List<Widget> _screen = const [
    ExploreMenuScreen(),
    ProfileScreen(),
    CartScreen(),
    MessingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: BodyBackground(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GetBuilder<MainBottomNavController>(
              builder: (controller) {
                return _screen[controller.currentIndex];
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimensions.width12,
              ).copyWith(bottom: Dimensions.height18),
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width15,
                // vertical: Dimensions.height18,
              ),
              decoration: BoxDecoration(
                  color: AppColor.backgroundColor2525,
                  borderRadius: BorderRadius.circular(
                    Dimensions.height18,
                  )),
              height: Dimensions.height70,
              child: GetBuilder<MainBottomNavController>(
                builder: (mainBottomNavController) {
                  return GNav(
                    onTabChange: (value) {
                      mainBottomNavController.changeIndex(value);
                    },
                    selectedIndex: mainBottomNavController.currentIndex,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColor.whiteColorFFF,
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
                        textColor: AppColor.whiteColorFFF,
                        text: 'Home',
                      ),
                      GButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(11),
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
                        padding: const EdgeInsets.all(11),
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
          ],
        ),
      ),
    );
  }
}


// class Star extends StatelessWidget {
//   final Color color;
//   final double size;
//   const Star({super.key, required this.color, required this.size});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: size,
//       width: size,
//       child: CustomPaint(
//         painter: _StarPainer(),
//       ),
//     );
//   }
// }

// class _StarPainer extends CustomPainter {
//   final Color color;
//   _StarPainer(this.color)
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = color;

//     final path = Path()..moveTo(size.width * 0.5, 0)
//     ..lineTo(size.width*0.618, size.height * 0.328, )
//     ..lineTo(size.width, size.height * 0.382)
//  ..lineTo(size.width * 0.691, size.height * 0.618)
//  ..lineTo(size.width * 0.809, size.height)
//  ..lineTo(size.width * 0.5, size.height * 0.7639)
//  ..lineTo(size.width * 0.191, size.height)
//  ..lineTo(size.width * 0.309, size.height * 0.618)
//  ..lineTo(size.width * 0.309, size.height * 0.618)
//  ..lineTo(0, size.height * 0.382)
//  ..lineTo(size.width * 0.382, size.height * 0.382)
//  ..close();
//  canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
