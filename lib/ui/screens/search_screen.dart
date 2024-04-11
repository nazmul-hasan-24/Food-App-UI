import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/explore_menu_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/app_bar.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/search_widget.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });
  // final TextInputType textInputType;
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> types = [
    'Restuarunt',
    'Menu',
    'Hot Deal',
  ];
  List<String> location = ['1 KM', '>10 KM', '<10 KM'];
  List<String> foods = [
    'Cake',
    'Soup',
    'Pasta',
    'Milk',
    'Panckaes',
    'Burger',
    'Pizza',
    'Ice Cram',
    'Sandwich',
    'Dodi'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor0d0d,
        body: Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(Dimensions.height20)),
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width25)
              .copyWith(top: Dimensions.height44, bottom: Dimensions.height20),
          child: BodyBackground(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBarWidget(
                  textInputType: TextInputType.text,
                  onTap: () {},
                ),
                verticalSpace(15),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Type',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        verticalSpace(7),
                        SearchWidget(text: types),
                        verticalSpace(10),
                        Text(
                          'Location',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        verticalSpace(10),
                        SearchWidget(text: location),
                        verticalSpace(10),
                        Text(
                          'Foods',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        verticalSpace(10),
                        SearchWidget(text: foods)
                      ],
                    ),
                  ),
                ),
                ElevatedButtonWidget(
                  text: "Search",
                  onTab: () {
                    Get.to(() => const ExploreMenuScreen());
                  },
                  width: double.infinity,
                  height: Dimensions.height70,
                  textColour: AppColor.backgroundColor0d0d,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Expanded extends Flexible {
//   const Expanded({super.key, required super.child}) : super(fit: FlexFit.tight);
// }
