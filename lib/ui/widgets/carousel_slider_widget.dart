import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/helper_text.dart';

class CarouseSliderWidget extends StatelessWidget {
  const CarouseSliderWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          ImagePath.food1,
          ImagePath.food2,
          ImagePath.food3,
          ImagePath.food4
        ].map((e) {
          return Builder(builder: (BuildContext context) {
            return Container(
              height: height * 0.2,
              padding: const EdgeInsets.all(10).copyWith(left: 012, right: 12),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Image.asset(e),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        verticalHeight(height * 0.03),
                        const HelperText(
                          bigText: 'Specila Deal For March',
                          fontSize: 0,
                        ),
                        verticalHeight(height * 0.01),
                        ElevatedButtonWidget(
                          buttonBackGrounColor: AppColor.whiteColor,
                          onTab: () {},
                          width: 140,
                          textColour: AppColor.primaryColor,
                          text: "Buy Now",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
          height: height * 0.22,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
