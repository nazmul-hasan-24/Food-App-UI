import 'package:flutter/material.dart';
import 'package:food_grid_ui/presentation/controllers/main_nav_controller.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/cart_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/message_screen.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/profile_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/app_bar.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/restaurant_card_widget.dart';
import 'package:food_grid_ui/ui/widgets/search_widget.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RestaurantListScreen extends StatefulWidget {
  const RestaurantListScreen({super.key, this.title});
  final String? title;

  @override
  State<RestaurantListScreen> createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {
  final List<Widget> _screen = const [
    ResList(),
    ProfileScreen(),
    CartScreen(),
    MessingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
                          horizontal: 20,
                          vertical: 5), // navigation bar padding
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
      ),
    );
  }
}

class ResList extends StatelessWidget {
  const ResList({super.key, this.title = ''});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const AppBarWidget(),
        verticalHeight(16),
        const SearchWidget(
          text: ['>10 KM x', 'soup x'],
        ),
        Text(
          title!,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        verticalHeight(14),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: 40,
            shrinkWrap: true,
            primary: false,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 13, crossAxisSpacing: 13, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return const FittedBox(
                fit: BoxFit.fill,
                child: RestaurantCard(),
              );
            },
          ),
        ),
      ],
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
