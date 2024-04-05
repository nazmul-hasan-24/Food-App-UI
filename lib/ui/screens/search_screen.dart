import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/app_bar.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/elevated_button.dart';
import 'package:food_grid_ui/ui/widgets/search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.textInputType});
  final TextInputType textInputType;
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
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BodyBackground(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const AppBarWidget(),
                verticalHeight(15),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Type',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        verticalHeight(7),
                        SearchWidget(text: types),
                        verticalHeight(10),
                        Text(
                          'Location',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        verticalHeight(10),
                        SearchWidget(text: location),
                        verticalHeight(10),
                        Text(
                          'Foods',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        verticalHeight(10),
                        SearchWidget(text: foods)
                      ],
                    ),
                  ),
                ),
                ElevatedButtonWidget(
                  text: "Search",
                  onTab: () {},
                  width: width * 0.9,
                  textColour: AppColor.blackColor2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Expanded extends Flexible {
  const Expanded({super.key, required super.child}) : super(fit: FlexFit.tight);
}
