import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/main_bottom_nav/home_screen.dart';

class AllResListScreen extends StatefulWidget {
  const AllResListScreen({super.key});

  @override
  State<AllResListScreen> createState() => _AllResListScreenState();
}

class _AllResListScreenState extends State<AllResListScreen> {
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
