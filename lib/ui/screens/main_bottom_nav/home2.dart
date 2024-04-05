import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/home_screen.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  bool showNewWidget = false;

  void toggleNewWidget() {
    setState(() {
      showNewWidget = !showNewWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
