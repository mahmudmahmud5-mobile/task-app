import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Brand & Primary Colors
  static const Color primary = Color(0xFF1448F3);        // Main Indigo/Purple (Buttons, Active Tabs, Logo)
  static const Color primaryLight = Color(0xFFEAEAFB);   // Soft Indigo Tint (Avatar bg, Pending badge bg, Empty icon bg)
  static const Color primaryBorder = Color(0xFF9E9EF0);  // Light Indigo Border ("Mark as Completed" button border)

  // Backgrounds & Surfaces
  static const Color scaffoldBackground = Color(0xFFEDEDF4); // Main screen background
  static const Color surface = Color(0xFFFFFFFF);            // Cards, TextFields, Unselected pills
  static const Color toggleBackground = Color(0xFFEEEEF2);   // Status segmented control container

  // Typography / Text Colors
  static const Color textPrimary = Color(0xFF14141F);    // Main headings, Task titles, App title
  static const Color textSecondary = Color(0xFF6E7185);  // Subtitles, Descriptions, Unselected tab text
  static const Color textMuted = Color(0xFF9EA1B2);      // Placeholders, Dates, "GOOD MORNING", Sub-labels

  // Borders & Dividers
  static const Color border = Color(0xFFE4E5EC);         // Input borders, Unselected priority pills, Card outlines

  // Status & Priority Accents
  // High Priority / Delete / Overdue
  static const Color danger = Color(0xFFDF3B3B);         // "High" text, "Delete Task" text, Overdue date
  static const Color dangerLight = Color(0xFFFCECEC);    // High priority badge & icon box background
  static const Color dangerBorder = Color(0xFFF5B7B7);   // "Delete Task" button border

  // Medium Priority / Pending Stat Icon
  static const Color warning = Color(0xFFD97706);        // "Medium" text, Pending clock icon
  static const Color warningLight = Color(0xFFFEF3C7);   // Medium priority icon box & selected pill bg

  // Low Priority / Completed / Done
  static const Color success = Color(0xFF16A34A);        // "Low" text, "Done" text, Completed check icon
  static const Color successLight = Color(0xFFE6F7ED);   // "Done" badge & Low priority icon box background


  static Color priorityText(String priority){
    if(priority == 'High'){
      return AppColors.danger;
    } else if(priority == 'Medium'){
      return AppColors.warning;
    } else {
      return AppColors.success;
    }
  }

  static Color priorityBackground(String priority) {
    if (priority == 'High') {
      return AppColors.dangerLight;
    } else if (priority == 'Medium') {
      return AppColors.warningLight;
    } else {
      return AppColors.successLight;
    }
  }


}