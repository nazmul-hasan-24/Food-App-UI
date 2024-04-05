import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/image_picker.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/container.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(onTab: () {
                  Navigator.pop(context);
                }),
                verticalHeight(15),
                const HelperText(bigText: "Payment Method"),
                verticalHeight(15),
                const SmallText(
                    smallText:
                        "This data will be displayed in your account\nprofile for security"),
                verticalHeight(15),
                const ContainerWidget(text: "PayPal"),
                verticalHeight(15),
                const ContainerWidget(text: "VISA"),
                verticalHeight(15),
                const ContainerWidget(text: "Payoneer"),
                verticalHeight(25),
                Center(
                  child: ElevatedButtonWidget(
                      text: "Next",
                      buttonBackGrounColor: AppColor.primaryColor,
                      onTab: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ImagesPicker();
                        }));
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
