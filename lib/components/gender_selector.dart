import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/core/app_text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? genderSelection;

  Color getColorGenderSelect(String gender) {
    return genderSelection == gender
        ? AppColors.backgroundComponentSelected
        : AppColors.backgroundComponent;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 8.0,
              bottom: 16.0,
              top: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  genderSelection = "male";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: getColorGenderSelect("male"),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male_rounded,
                      color: AppColors.genderSelectorIconColor,
                      size: 150.0,
                    ),
                    Transform.translate(
                      offset: Offset(0, -10),
                      child: Text(
                        "hombre".toUpperCase(),
                        style: AppTextStyles.genderText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 8.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  genderSelection = "female";
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: getColorGenderSelect("female"),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.female_rounded,
                      color: AppColors.genderSelectorIconColor,
                      size: 150.0,
                    ),
                    Transform.translate(
                      offset: Offset(0, -10),
                      child: Text(
                        "mujer".toUpperCase(),
                        style: AppTextStyles.genderText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
