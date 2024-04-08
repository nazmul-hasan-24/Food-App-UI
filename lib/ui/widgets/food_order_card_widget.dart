import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/assets_path/images_path.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/helper_widgets.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';

class FoodOrderCardWidget extends StatefulWidget {
  const FoodOrderCardWidget({super.key});

  @override
  State<FoodOrderCardWidget> createState() => _FoodOrderCardWidgetState();
}

class _FoodOrderCardWidgetState extends State<FoodOrderCardWidget> {
  int item = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(bottom: 18),
      constraints:
          const BoxConstraints(minHeight: 130, minWidth: double.infinity),
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: Colors.transparent),
        borderRadius: BorderRadius.circular(12),
        color: AppColor.lightBlack,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                ImagePath.food3,
                height: 100,
                width: 100,
              ),
            ),
          ),
          horizontal(6),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Spicy fresh crab",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                verticalHeight(2),
                const SmallText(smallText: "Hollywood Dine"),
                verticalHeight(2),
                const Text(
                  "\$50",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primaryColor),
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 4,
            alignment: WrapAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 20,
                width: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: item == 1 ? Colors.grey[800] : AppColor.primaryColor,
                ),
                child: GestureDetector(
                  onTap: () {
                    if (item > 1) {
                      item--;
                    }
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.remove,
                    color: AppColor.whiteColorFFF,
                  ),
                ),
              ),
              Text(
                "$item",
                style: const TextStyle(color: AppColor.whiteColorFFF),
              ),
              GestureDetector(
                onTap: () {
                  if (item >= 1) {
                    item++;
                  }
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 20,
                  width: 28,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 105, 90, 63),
                      Color.fromARGB(255, 201, 138, 31)
                    ]),
                    borderRadius: BorderRadius.circular(5),
                    // color: Colors.black12,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColor.whiteColorFFF,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
