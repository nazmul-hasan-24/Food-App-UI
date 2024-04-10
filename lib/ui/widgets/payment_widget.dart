import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';

class PaymentWidget extends StatelessWidget {
  final String imageName;
  final String? text;
  final double? imageHeight;
  final MainAxisAlignment mainAxisAlignment;
  const PaymentWidget(
      {super.key,
      required this.imageName,
      required this.imageHeight,
      this.text,
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: Dimensions.height80,
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor2525,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Image.asset(
            imageName,
            height: imageHeight,
          ),
          SmallText(smallText: text ?? '')
        ],
      ),
    );
  }
}
