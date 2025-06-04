import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';

class AppTextStyles {
  // Gender Selector
  static const TextStyle genderText = TextStyle(
    fontSize: 16,
    color: AppColors.textTitleHome,
    fontWeight: FontWeight.w700,
  );

  // Height Selector
  static const TextStyle sliderTitleText = TextStyle(
    fontSize: 16,
    color: AppColors.textTitleHome,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle sliderHeightText = TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.w700,
  );

  // Number Selector
    static const TextStyle numberSelectorText = TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.w700,
  );

    static const TextStyle numberSelectorTitleText = TextStyle(
    fontSize: 16,
    color: AppColors.textTitleHome,
    fontWeight: FontWeight.w700,
  );
}
