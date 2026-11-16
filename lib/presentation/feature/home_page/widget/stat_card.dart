import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';

class StatCard extends StatelessWidget {
  const new({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.count,
    required this.label,
  });
  final IconData icon;
  final Color iconColor;
  final int count;
  final String label;




  @override
  Widget build(BuildContext context) {
    return Container(

      width: 120,
      decoration: BoxDecoration(color: AppColors.surface,
          borderRadius: .circular(24),
          boxShadow: [
            BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.95)
            )
          ]
      ),

      margin: EdgeInsets.symmetric(vertical: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 24,),
            SizedBox(height: 4,),
            Text(count.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),),
            SizedBox(height: 4,),
            Text(label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.textMuted,
              ),),



          ],
        ),
      ),
    );
  }
}
