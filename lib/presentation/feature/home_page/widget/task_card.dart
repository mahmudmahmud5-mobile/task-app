import 'package:flutter/material.dart';
import 'package:task_manager/core/app_strings.dart';
import 'package:task_manager/core/colors.dart';
import 'package:task_manager/core/task.dart';


class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
    required this.onTap,
    required this.onStatusTap,
  });

  final Task task;
  final VoidCallback onTap;
  final VoidCallback onStatusTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: .circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: .circular(18),
            ),
            child: Icon(Icons.flag_circle, color: AppColors.danger, size: 24,),),
          SizedBox(width: 8,),
          Expanded(
            child: Column(
              children: [
                Text(task.title, maxLines: 1,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .w800,
                    color:  AppColors.textMuted,

                  ),),
                Text(task.description, maxLines: 1, overflow: .ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .w800,
                    color: task.isCompleted? AppColors.textMuted : AppColors.textPrimary,
                    decoration: task.isCompleted? TextDecoration.lineThrough : TextDecoration.none,

                  ),),
                Row(
                  spacing: 6,
                  children: [
                    Icon(Icons.schedule, color: AppColors.textMuted, size: 14,),
                    Text(task.priority, style: TextStyle(
                      color: AppColors.priorityText(task.priority),
                      fontWeight: .w600,
                    ),)
                  ],
                )

              ],
            ),
          ),
          Container(
            padding: .symmetric(horizontal: 11, vertical: 5),
            decoration: BoxDecoration(color: AppColors.primaryLight,
                borderRadius: .circular(100)),
            child: Text(
              task.isCompleted? AppStrings.statusBadgeDone : AppStrings.statusBadgePending,
              style: TextStyle(
                fontSize: 12,
                fontWeight: .w800,
                color: task.isCompleted? AppColors.success : AppColors.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
