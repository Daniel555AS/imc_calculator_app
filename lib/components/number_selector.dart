import 'package:flutter/material.dart';
import 'package:imc_app/core/app_colors.dart';
import 'package:imc_app/core/app_text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;
  final Function() increase;
  final Function() decrease;

  const NumberSelector({
    super.key,
    required this.title,
    required this.value,
    required this.increase,
    required this.decrease,
  });

  @override
  State<NumberSelector> createState() => _NumberSelector();
}

class _NumberSelector extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundComponent,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.title, style: AppTextStyles.numberSelectorTitleText),
            Text(
              widget.value.toString(),
              style: AppTextStyles.numberSelectorText,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    widget.decrease();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(Icons.remove, size: 45, color: Colors.white),
                  ),
                ),
                SizedBox(width: 15.0),
                GestureDetector(
                  onTap: () {
                    widget.increase();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(Icons.add, size: 45, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
