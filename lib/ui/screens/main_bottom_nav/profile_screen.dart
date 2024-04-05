import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/voucher_promo_screen.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/large_text.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        ImagePath.myPhoto,
                      ))),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.76,
              minChildSize: 0.76,
              builder: (context, scrollController) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width / 13.76,
                    vertical: 15,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColor.backgroundColor1,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 3.55,
                            width: 60,
                            color: AppColor.backgroundColor2,
                          ),
                        ),
                        verticalHeight(50),
                        Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.all(height / 67.6),
                          height: height / 20.28,
                          width: width / 3.2,
                          constraints: BoxConstraints(minWidth: width / 6.77),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 29, 24, 16),
                          ),
                          child: const SmallText(
                            fontSize: 12,
                            textColor: Color(0xFFFFA300),
                            smallText: "Member Gold",
                          ),
                        ),
                        verticalHeight(20),
                        Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const LargeText(
                              largeText: "Tanvir Islam",
                              fontSize: 30,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  ImagePath.editIcon,
                                  width: 18,
                                  height: 18,
                                )),
                          ],
                        ),
                        verticalHeight(8),
                        const SmallText(
                          smallText: 'tianvirdrubelf53@gmail.com',
                          fontSize: 12,
                        ),
                        verticalHeight(20),
                        Container(
                          height: height / 12.68,
                          decoration: BoxDecoration(
                            color: AppColor.backgroundColor2,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            onTap: () => Get.to(
                              () => const VoucherPromoScreen(),
                            ),
                            leading: Image.asset(ImagePath.voucher),
                            title: const LargeText(
                              largeText: "You Have 3 Voucher",
                              fontSize: 15,
                            ),
                          ),
                        ),
                        verticalHeight(15),
                        const LargeText(
                          largeText: "Favourite",
                          fontSize: 15,
                        ),
                        verticalHeight(15),
                        Container(
                          // alignment: Alignment.center,
                          height: height / 7.37,
                          padding:
                              EdgeInsets.all(height / 90.75).copyWith(left: 10),
                          decoration: BoxDecoration(
                            color: AppColor.backgroundColor2,
                            borderRadius: BorderRadius.circular(height / 73.75),
                          ),
                          // padding: EdgeInsets.all(29),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    ImagePath.food3,
                                    height: height / 10.01,
                                    width: width / 4.31,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LargeText(
                                    largeText: "Spicy fesh carb",
                                    fontSize: height / 58.08,
                                  ),
                                  SmallText(
                                    smallText: "Meat You There",
                                    fontSize: height / 67.06,
                                    textColor: const Color(0xFFA1A1A1),
                                  ),
                                  LargeText(
                                    largeText: "\$50",
                                    fontSize: height / 50.56,
                                    color: AppColor.primaryColor,
                                  ),
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColor.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    fixedSize:
                                        Size(width / 4.7, height / 26.16),
                                  ),
                                  child: const LargeText(
                                    largeText: 'Buy Again',
                                    fontSize: 10,
                                    color: AppColor.textBlack,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
