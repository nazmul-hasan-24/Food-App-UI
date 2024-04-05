import 'package:flutter/material.dart';
import 'package:food_grid_ui/ui/screens/search_screen.dart';
import 'package:food_grid_ui/ui/utils/colors.dart';
import 'package:get/get.dart';

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
      keyboardType: TextInputType.text,
      onTap: () => Get.to(() => const SearchScreen(
            textInputType: TextInputType.text,
          )),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintTextDirection: TextDirection.ltr,
        contentPadding: EdgeInsets.zero,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 5,
          ),
          child: Icon(prefixIcon),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Icon(suffixIcon),
        ),
        suffixIconColor: AppColor.whiteColor,
        prefixIconColor: AppColor.philippineGray,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        hintText: hintText,
        fillColor: const Color.fromARGB(255, 46, 43, 43),
        filled: false,
        hintStyle: const TextStyle(color: AppColor.philippineGray),
      ),
    );
  }
}
