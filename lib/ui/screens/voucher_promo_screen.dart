import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/back_button_widget.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';

class VoucherPromoScreen extends StatelessWidget {
  const VoucherPromoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    return Scaffold(
      body: BodyBackground(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(
                  onTab: () {},
                ),
                verticalHeight(30),
                const LargeText(
                  largeText: "Voucher Promo",
                  fontSize: 25,
                ),
                verticalHeight(20),
                Expanded(
                  child: ListView.separated(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: height / 4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFF22EA8A),
                              const Color(0xFF02AC5B).withOpacity(0.8),
                            ],
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              ImagePath.promo1,
                              height: width / 2.25,
                              width: width / 2.409,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 167,
                                  child: LargeText(
                                    fontSize: width / 19.2,
                                    fontWeight: FontWeight.w700,
                                    largeText: "Special Deal For Octorber",
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: width / 3.7,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, -6),
                                        spreadRadius: -8,
                                        blurRadius: 20,
                                        color: const Color(0xFF000000)
                                            .withOpacity(0.2),
                                      ),
                                    ],
                                  ),
                                  child: const LargeText(
                                    largeText: "Buy now",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFf008344),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return verticalHeight(10);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
