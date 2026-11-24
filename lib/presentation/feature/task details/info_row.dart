import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key,
  required this.label,
    required this.icon,
    required this.value,
    required this.valueColor
  });

  final IconData icon;
  final String value;
  final String label;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.surface
          ),
          child: Icon(icon),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            Text(value, style: TextStyle(
              color: valueColor,
              fontWeight: FontWeight.w600
            ),)
          ],
        )
      ],
    );
  }
}
