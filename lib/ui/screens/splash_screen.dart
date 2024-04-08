import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/onboading1_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 14, 13, 13),
        body: Image.asset(ImagePath.splash),
      ),
    );
  }
}

Future<void> goToNextScreen() async {
  Future.delayed(const Duration(seconds: 3))
      .then((value) => Get.offAll(() => const OnBoadingScreen1()));
}
