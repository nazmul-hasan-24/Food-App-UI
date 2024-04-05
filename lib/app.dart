import 'package:flutter/material.dart';
import 'package:food_grid_ui/controller_binder.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/main_bottom_nav.dart';
import 'package:food_grid_ui/ui/screens/splash_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:get/get.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Grid Food UI',
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            // backgroundColor:  Color.fromARGB(255, 14, 13, 13),
            ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        scaffoldBackgroundColor: Colors.black26,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding:
                const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
            textStyle: const MaterialStatePropertyAll<TextStyle>(TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor2)),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            backgroundColor:
                const MaterialStatePropertyAll<Color>(AppColor.primaryColor),
            fixedSize: const MaterialStatePropertyAll<Size>(
              Size(130, 45),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const MainBottomNavScreen(),
    );
  }
}
