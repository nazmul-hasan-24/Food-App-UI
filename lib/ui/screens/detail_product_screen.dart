import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: 414,
            height: 441,
            fit: BoxFit.fill,
            ImagePath.res1,
          ),
          DraggableScrollableSheet(
              maxChildSize: 0.94,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, scroller) {
                return Container(
                  padding: const EdgeInsets.only(left: 25),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: AppColor.backgroundColor1,
                  ),
                  child: SingleChildScrollView(
                    controller: scroller,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ElevatedButtonWidget(
                              width: 99,
                              height: 35,
                              buttonBackGrounColor:
                                  const Color(0xffFFBF49).withOpacity(0.7),
                              text: "Regular",
                              fontSize: 12,
                              textColour: const Color(0xFFFEAD1D),
                              fontWeight: FontWeight.w400,
                              onTab: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
