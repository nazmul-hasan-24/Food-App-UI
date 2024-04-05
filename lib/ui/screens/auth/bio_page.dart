import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/auth/payment_page.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:food_grid_ui/ui/widgets/text_form_field.dart';

class BioPage extends StatelessWidget {
  const BioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyBackground(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(onTab: () {}),
              verticalHeight(15),
              const HelperText(bigText: "Fill in your bio to get\nstarted"),
              verticalHeight(15),
              const SmallText(
                  smallText:
                      "This data will be displayed in your account\nprofile for secuity"),
              verticalHeight(22),
              const CustomTextFormField(
                hintText: "First Name",
                textInputType: TextInputType.name,
              ),
              verticalHeight(10),
              const CustomTextFormField(
                hintText: "Last Name",
                textInputType: TextInputType.text,
              ),
              verticalHeight(10),
              const CustomTextFormField(
                hintText: "Mobile Number",
                textInputType: TextInputType.text,
              ),
              verticalHeight(35),
              Center(
                child: ElevatedButtonWidget(
                  text: "Next",
                  buttonBackGrounColor: AppColor.primaryColor,
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const PaymentMethodScreen();
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
