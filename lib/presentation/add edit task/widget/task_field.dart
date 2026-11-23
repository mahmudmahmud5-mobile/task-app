import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';

class TaskField extends StatelessWidget {
  const TaskField({super.key,
  required this.controller,
   this.hasError =false,
  required this.hintText,
   this.maxLines =1
  });

  final TextEditingController controller;
  final String hintText;
  final bool hasError;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final borderColor = hasError? AppColors.dangerBorder : AppColors.primaryBorder;
    return TextField(

      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.surface,
        border: _outLine(AppColors.border),
        enabledBorder: _outLine(AppColors.primaryBorder),
        focusedBorder: _outLine(AppColors.primary),

        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textMuted
        )
      ),
    );
  }
  OutlineInputBorder _outLine(Color color){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color:  color),
    );
  }
}
