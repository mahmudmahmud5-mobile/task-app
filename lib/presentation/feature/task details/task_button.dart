import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';

class TaskButton extends StatelessWidget {
  const TaskButton({super.key,
  required this.icon,
    required this.value,
    required this.label,
    required this.textColor,
    required this.backgroundColor,
    this.onTap
  });

  final IconData icon;
  final String label;
  final Color value;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360,
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor.withAlpha(50),

          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: textColor,

          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: value,),
            Text(label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: value
            ),),
          ],
        ),
      ),
    );
  }
}
