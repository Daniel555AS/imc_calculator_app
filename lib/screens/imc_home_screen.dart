import 'package:flutter/material.dart';
import 'package:imc_app/components/gender_selector.dart';
import 'package:imc_app/components/height_selector.dart';
import 'package:imc_app/components/number_selector.dart';

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
                      if(selectedWeight < 300) {
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
                      if(selectedAge < 130) {
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
        FloatingActionButton(onPressed: () {}),
      ],
    );
  }
}
