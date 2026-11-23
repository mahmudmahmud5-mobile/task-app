import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';


class PriorityTab extends StatelessWidget {
  const PriorityTab({super.key, required this.label, required this.isSelected, required this.onTap});

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected? AppColors.priorityBackground(label) : AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isSelected ? AppColors.priorityText(label) : AppColors.surface)
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? AppColors.priorityText(label) : AppColors.textSecondary,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
