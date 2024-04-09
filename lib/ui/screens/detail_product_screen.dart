import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/home/section_title.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';

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
            width: double.infinity,
            height: height / 2.31,
            fit: BoxFit.fill,
            ImagePath.res1,
          ),
          SizedBox(
            height: height / 1.038,
            child: DraggableScrollableSheet(
              maxChildSize: 0.94,
              initialChildSize: 0.64,
              minChildSize: 0.64,
              builder: (context, scroller) {
                return Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: height / 35.84)
                      .copyWith(top: height / 44.8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: AppColor.backgroundColor0d0d,
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(0),
                    controller: scroller,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 3.55,
                            width: 60,
                            color: AppColor.backgroundColor2525,
                          ),
                        ),
                        verticalHeight(height / 40.727),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              // padding: EdgeInsets.all(height / 67.6),
                              height: height / 25.6,
                              width: width / 3.2,
                              constraints:
                                  BoxConstraints(minWidth: width / 6.77),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 29, 24, 16),
                              ),
                              child: SmallText(
                                fontSize: height / 74.666,
                                textColor: const Color(0xFFFFA300),
                                smallText: "Regular",
                              ),
                            ),
                            Wrap(
                              spacing: 5,
                              children: [
                                Container(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: const Color(0xFFFFBE49)
                                        .withOpacity(0.1),
                                  ),
                                  height: height / 26.365,
                                  width: width / 12.17,
                                  child: Icon(
                                    Icons.location_on,
                                    size: height / 35.84,
                                    color: const Color(0xFFFFBE49),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: const Color(0xFFFF1D1D)
                                        .withOpacity(0.1),
                                  ),
                                  height: height / 26.365,
                                  width: width / 12.17,
                                  child: Icon(
                                    Icons.favorite,
                                    size: height / 35.84,
                                    color: const Color(0xFFFF1D1D),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        verticalHeight(15),
                        LargeText(
                          largeText: "The Hungry Wolf",
                          fontSize: height / 29.8666,
                          fontWeight: FontWeight.w600,
                        ),
                        verticalHeight(20),
                        Wrap(
                          spacing: height / 49.777,
                          children: [
                            Wrap(
                              spacing: height / 74.666,
                              children: [
                                SizedBox(
                                  height: height / 44.8,
                                  width: width / 25.875,
                                  child: Icon(
                                    color: Color(0xFFFFA300),
                                    Icons.location_on,
                                  ),
                                ),
                                SmallText(
                                  smallText: "10 Km",
                                  letterSpacing: 0.5,
                                  textColor: Color(0xFF666666),
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: 12,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 16,
                                  child: Icon(
                                    color: Color(0xFFFFA300),
                                    Icons.star_half,
                                  ),
                                ),
                                SmallText(
                                  smallText: "4.8 Rating",
                                  letterSpacing: 0.5,
                                  textColor: Color(0xFF666666),
                                ),
                              ],
                            ),
                          ],
                        ),
                        verticalHeight(44.8),
                        SmallText(
                          fontSize: height / 74.666,
                          smallText:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis rutrum imperdiet turpis aenean viverra. Ornare vel risus, tincidunt tortor quis in elementum. Pulvinar pharetra dignissim sit posuere nulla lacus ',
                        ),
                        verticalHeight(height / 44.8),
                        SectionTitle(
                          title: "Popular Menu",
                          onTap: () {},
                        ),
                        verticalHeight(20),
                        SizedBox(
                          height: height / 5.635,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(
                                    right: 10,
                                  ),
                                  height: height / 5.635,
                                  width: width / 2.76,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColor.backgroundColor2525,
                                  ),
                                  child: Column(
                                    children: [
                                      verticalHeight(height / 44.8),
                                      Image.asset(
                                        ImagePath.burger,
                                        height: height / 15.72,
                                        width: width / 5.52,
                                      ),
                                      verticalHeight(13),
                                      SmallText(
                                        smallText: "Spacy fresh crab",
                                        fontSize: height / 68.923,
                                        textColor: AppColor.whiteColorFFF,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      verticalHeight(10),
                                      SmallText(
                                        smallText: "12\$",
                                        fontSize: height / 74.666,
                                        textColor: const Color(0xFFC4C4C4),
                                        fontWeight: FontWeight.w400,
                                      )
                                    ],
                                  ),
                                );
                              },
                              itemCount: 15),
                        ),
                        verticalHeight(20),
                        const LargeText(
                          largeText: "Testimonials",
                          fontSize: 15,
                        ),
                        verticalHeight(height / 44.8),
                        ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          primary: false,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              height: height / 6.4,
                              padding: EdgeInsets.symmetric(
                                  vertical: height / 42.666,
                                  horizontal: width / 29.571),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(height / 59.74),
                                color: const Color.fromARGB(76, 37, 37, 37),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(height / 89.6),
                                    child: Image.asset(
                                      ImagePath.myPhoto,
                                      // fit: BoxFit.fill,
                                      width: width / 4.71,
                                      height: height / 10.8,
                                    ),
                                  ),
                                  horizontal(width / 20.71),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        LargeText(
                                          largeText: "William Noah",
                                          fontSize: height / 59.7333,
                                        ),
                                        verticalHeight(height / 298.666),
                                        SmallText(
                                          smallText: "10 April 2022",
                                          fontSize: height / 74.77,
                                          textColor: const Color(0xFFA1A1A1),
                                        ),
                                        verticalHeight(height / 52.71),
                                        Text(
                                          "This is great, so delicious! you must here, with your family",
                                          maxLines: 2,
                                          style: TextStyle(
                                            inherit: false,
                                            fontSize: height / 74.666,
                                            fontWeight: FontWeight.w400,
                                            overflow: TextOverflow.ellipsis,
                                            color: const Color(0xFFDFDFDF),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: height / 28.91,
                                    width: width / 16.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: AppColor.primaryColor
                                          .withOpacity(0.1),
                                    ),
                                    child: Wrap(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: height / 42.666,
                                          color: AppColor.primaryColor,
                                        ),
                                        LargeText(
                                          largeText: "5",
                                          fontSize: height / 59.733,
                                          color: AppColor.primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (_, __) {
                            return verticalHeight(height / 44.8);
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
