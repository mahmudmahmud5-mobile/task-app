import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 24, width: 24,
      decoration: BoxDecoration(color: AppColors.primary,
          borderRadius: .circular(8),
          boxShadow: [
            BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.95)
            )
          ]
      ),
      child: Icon(Icons.check, color: AppColors.primaryLight,
        size: 13,),

    );
  }
}
