import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/core/app_text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final Function(double) selectHeight;

  const HeightSelector({
    super.key,
    required this.height,
    required this.selectHeight,
  });

  @override
  State<HeightSelector> createState() => _HeightSelector();
}

class _HeightSelector extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0.0,
        left: 16.0,
        bottom: 16.0,
        right: 16.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("ALTURA", style: AppTextStyles.sliderTitleText),
              Text(
                "${widget.height.toStringAsFixed(0)} cm",
                style: AppTextStyles.sliderHeightText,
              ),
              Slider(
                value: widget.height,
                onChanged: (newHeight) {
                  widget.selectHeight(newHeight);
                },
                max: 220,
                min: 145,
                divisions: 75,
                label: widget.height.toStringAsFixed(0),
                activeColor: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
