import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';


class StatusTab extends StatelessWidget {
  const StatusTab({super.key, required this.label, required this.isSelected,
  required this.onTop});

  final String label;
  final bool isSelected;
  final VoidCallback onTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected? AppColors.surface : AppColors.toggleBackground,

        border: Border.all(color: isSelected ? AppColors.activeTabBg : AppColors.toggleBackground),

      ),
      child: Center(
        child: Text(label,
        style: TextStyle(
          color: isSelected ? AppColors.textPrimary : AppColors.textMuted,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),),
      ),
    );
  }
}
