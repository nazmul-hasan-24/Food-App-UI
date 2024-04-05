import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';

class BodyBackground extends StatelessWidget {
  const BodyBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        // alignment: Alignment.topRight,
        children: [
          Image.asset(
            // color: Colors.red,
            colorBlendMode: BlendMode.dstOut,
            ImagePath.recBackgroundImage,
            fit: BoxFit.fill,
          ),
          child,
        ],
      ),
    );
  }
}
