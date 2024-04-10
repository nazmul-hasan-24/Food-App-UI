import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';
import 'package:food_grid_ui/ui/widgets/small_text.dart';

ListTile listTileWidget(String title) {
  return ListTile(
    horizontalTitleGap: Dimensions.width15,
    minVerticalPadding: 0,
    minLeadingWidth: Dimensions.width10,
    // isThreeLine: true,
    // contentPadding: const EdgeInsets.symmetric(horizontal: 5),
    leading: Icon(
      Icons.circle,
      size: Dimensions.width10,
      color: AppColor.philippineGrayC4C4,
    ),
    title: SmallText(
      smallText: title,
      fontSize: Dimensions.font12,
    ),
  );
}
