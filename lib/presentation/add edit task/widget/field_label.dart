import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';


class FieldLabel extends StatelessWidget {
  const FieldLabel({super.key, required this.text});

  final String text;



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.textMuted,
      ),
    );
  }
}
