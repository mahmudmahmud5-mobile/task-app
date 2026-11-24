import 'package:flutter/material.dart';
import 'package:task_manager/core/app_strings.dart';
import 'package:task_manager/core/colors.dart';
import 'package:task_manager/presentation/core/square_icon_button.dart';
import 'package:task_manager/presentation/feature/task%20details/info_pill.dart';
import 'package:task_manager/presentation/feature/task%20details/info_row.dart';
import 'package:task_manager/presentation/feature/task%20details/task_button.dart';




class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: Text(AppStrings.taskDetails),
        centerTitle: true,
        leading: SquareIconButton(icon: Icons.arrow_back,
        onTap: (){ Navigator.of(context).pop();},),
        actions: [
          SquareIconButton(icon: Icons.edit,
          onTap: (){ Navigator.of(context).pop();},),
          SizedBox(width: 14,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                width: 360,
                decoration: BoxDecoration(
                  color: AppColors.surface
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 16,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          InfoPill(
                            text: AppStrings.badgeHighPriority,
                            textColor: AppColors.danger,
                            backgroundColor: AppColors.danger.withAlpha(50),
                          ),
                          InfoPill(
                            text: AppStrings.badgePending,
                            textColor: AppColors.primary,
                            backgroundColor: AppColors.primary.withAlpha(50),
                          ),
                        ],

                      ),
                      Text(AppStrings.detailTaskTitle,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary
                      ),),
                      InfoRow(icon: Icons.calendar_month,
                        label: AppStrings.labelDueDate,
                        value: AppStrings.detailDueDate,
                        valueColor: AppColors.danger,),
                      InfoRow(icon: Icons.watch_later_outlined,
                        label: AppStrings.labelCreated,
                        value: AppStrings.detailCreatedDate,
                        valueColor: AppColors.textPrimary,)
                    ],

                  ),
                ),
              ),

            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(AppStrings.descriptionHeader, style: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.w600),),
      ),

      Center(
        child: Container(
          alignment: AlignmentDirectional.centerStart,
          width: 360,
          decoration: BoxDecoration(
              color: AppColors.surface
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppStrings.detailDescriptionBody,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),),
          ),
        ),
      ),
           TaskButton(icon: Icons.check, value: AppColors.primary, label: AppStrings.markAsCompletedButton, textColor: AppColors.primary, backgroundColor: AppColors.primary,),
            TaskButton(icon: Icons.delete, value: AppColors.danger, label: AppStrings.deleteTaskButton, textColor: AppColors.danger, backgroundColor: AppColors.surface)
          ],
        ),
      ),
    );
  }
}
