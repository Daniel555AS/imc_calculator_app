import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/core/app_text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;

  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: getAppBar(),
      body: getBody(context),
    );
  }

  Padding getBody(BuildContext context) {
    double imcResult = calculateImc(height, weight);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text("Tu Resultado", style: AppTextStyles.resultsTitleText),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.backgroundComponent,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    obtainImcCategory(imcResult),
                    style: TextStyle(
                      color: obtainImcCategoryColor(imcResult),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 70),
                  Text(
                    imcResult.toStringAsFixed(2),
                    style: AppTextStyles.imcResultText,
                  ),
                  SizedBox(height: 70),
                  Text(
                    obtainImcDescription(imcResult),
                    style: AppTextStyles.imcResultDescriptionText,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30.0,
              top: 30.0,
            ),
            child: SizedBox(
              height: 55.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColors.primary),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: Text("Finalizar", style: AppTextStyles.buttonText),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text("Tu resultado"),
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textTitleHome,
    );
  }

  double calculateImc(double height, int weight) {
    double fixedHeight = height / 100;
    return weight / (fixedHeight * fixedHeight);
  }

  String obtainImcCategory(double imc) {
    switch (imc) {
      case (< 18.5):
        return "Bajo peso";
      case (>= 18.5 && <= 24.9):
        return "Peso normal";
      case (>= 25.0 && <= 29.9):
        return "Sobrepeso";
      case (>= 30.0 && <= 34.9):
        return "Obesidad grado I";
      case (>= 35.0 && <= 39.9):
        return "Obesidad grado II";
    }
    return "Obesidad grado III (mórbida)";
  }

  Color obtainImcCategoryColor(double imc) {
    switch (imc) {
      case (< 18.5):
        return const Color.fromARGB(255, 210, 21, 220);
      case (>= 18.5 && <= 24.9):
        return const Color.fromARGB(255, 8, 194, 14);
      case (>= 25.0 && <= 29.9):
        return const Color.fromARGB(255, 230, 130, 15);
      case (>= 30.0 && <= 34.9):
        return const Color.fromARGB(255, 237, 77, 77);
      case (>= 35.0 && <= 39.9):
        return const Color.fromARGB(255, 206, 19, 19);
    }
    return const Color.fromARGB(255, 95, 1, 1);
  }

  String obtainImcDescription(double imc) {
    switch (imc) {
      case (< 18.5):
        return "Su peso es insuficiente";
      case (>= 18.5 && <= 24.9):
        return "Su peso es saludable";
      case (>= 25.0 && <= 29.9):
        return "Usted tiene exceso de peso";
      case (>= 30.0 && <= 34.9):
        return "Usted tiene obesidad leve";
      case (>= 35.0 && <= 39.9):
        return "Usted tiene obesidad severa";
    }
    return "Usted tiene obesidad muy grave";
  }
}
