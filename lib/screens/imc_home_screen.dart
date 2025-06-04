import 'package:flutter/material.dart';
import 'package:imc_app/components/gender_selector.dart';
import 'package:imc_app/components/height_selector.dart';
import 'package:imc_app/components/number_selector.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/core/app_text_styles.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedWeight = 60;
  int selectedAge = 18;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: NumberSelector(
                  title: "PESO (Kg)",
                  value: selectedWeight,
                  decrease: () {
                    setState(() {
                      if (selectedWeight > 0) {
                        selectedWeight--;
                      }
                    });
                  },
                  increase: () {
                    setState(() {
                      if (selectedWeight < 300) {
                        selectedWeight++;
                      }
                    });
                  },
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: NumberSelector(
                  title: "EDAD (Años)",
                  value: selectedAge,
                  decrease: () {
                    setState(() {
                      if (selectedAge > 0) {
                        selectedAge--;
                      }
                    });
                  },
                  increase: () {
                    setState(() {
                      if (selectedAge < 130) {
                        selectedAge++;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, top: 30.0, left: 16.0, right: 16.0),
          child: SizedBox(
            height: 55.0,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                )),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text("Continuar", style: AppTextStyles.buttonText),
            ),
          ),
        ),
      ],
    );
  }
}
