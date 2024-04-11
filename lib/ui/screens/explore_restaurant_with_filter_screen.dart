import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/app_bar.dart';
import 'package:food_grid_ui/ui/widgets/body_background.dart';
import 'package:food_grid_ui/ui/widgets/restaurant_card_widget.dart';
import 'package:food_grid_ui/ui/widgets/search_widget.dart';

class ExploreRestaurantWithFilterScreen extends StatelessWidget {
  const ExploreRestaurantWithFilterScreen({super.key, this.title = ''});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor0d0d,
      body: BodyBackground(
        child: Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(Dimensions.height8)),
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width25)
              .copyWith(top: Dimensions.height44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const AppBarWidget(
                textInputType: TextInputType.text,
              ),
              verticalSpace(16),
              const SearchWidget(
                text: ['>10 KM x', 'soup x'],
              ),
              Text(
                title!,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              verticalSpace(Dimensions.height14),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 40,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 13,
                      crossAxisSpacing: 13,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const FittedBox(
                      fit: BoxFit.fill,
                      child: RestaurantCardWidget(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
