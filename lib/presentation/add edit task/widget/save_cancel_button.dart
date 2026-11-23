import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';


class SaveCancelButton extends StatelessWidget {
  const SaveCancelButton({super.key, required this.text,
    this.backgroundColor = AppColors.primary,
    this.textColor = AppColors.primaryLight,});

  final String text;
  final Color backgroundColor;
  final Color textColor;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Center(
        child: Text(text,
        style: TextStyle(
          color: textColor
        ),),
      ),
    );
  }
}
