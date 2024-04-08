import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:food_grid_ui/ui/utils/dimensions.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType textInputType;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // expands: true,
      // maxLines: 5,
      keyboardType: TextInputType.text,
      // onTap: () => Get.to(() => const SearchScreen(
      //       textInputType: TextInputType.text,
      //     )),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        // alignLabelWithHint: true,
        hintTextDirection: TextDirection.ltr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: Dimensions.width25,
          vertical: Dimensions.height18,
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: Dimensions.iconWidth24,
        ),
        suffixIcon: Icon(suffixIcon),
        // prefixIconConstraints: BoxConstraints(minHeight: 15, minWidth: 15),
        suffixIconColor: AppColor.a1a1IconColor,
        prefixIconColor: AppColor.a1a1IconColor,

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimensions.height8),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimensions.height8),
        ),

        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimensions.height8),
        ),

        hintText: hintText,
        fillColor: AppColor.backgroundColor2525,
        filled: true,
        hintStyle: TextStyle(
            color: AppColor.philippineGrayC4C4,
            fontSize: Dimensions.height14,
            letterSpacing: 0.5),
      ),
    );
  }
}
