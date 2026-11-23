import 'package:flutter/material.dart';
import 'package:task_manager/core/colors.dart';

class SquareIconButton extends StatelessWidget {
  const SquareIconButton({super.key, required this.icon, this.onTap});
  final IconData icon;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height:36,
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
            borderRadius: .circular(8)

      ),
      child: IconButton(onPressed: onTap, icon: Icon(icon)),
    );
  }
}
