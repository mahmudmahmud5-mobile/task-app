import 'package:flutter/material.dart';

class InfoPill extends StatelessWidget {
  const InfoPill({super.key,
  required this.text,
    required this.textColor,
    required this.backgroundColor
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(14)

      ),
      child: Text(text,
      style: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w800
      ),),
    );
  }
}
