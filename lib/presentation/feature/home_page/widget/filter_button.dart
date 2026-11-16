import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.surface,
          borderRadius: .circular(100),
          border: Border.all(color: AppColors.border),

        ),
        alignment: .center,
        child: Text(label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: isSelected ? AppColors.primaryLight : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
