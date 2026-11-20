import 'package:flutter/material.dart';
import 'package:task_manager/presentation/add edit task/widget/field_label.dart';
import 'package:task_manager/core/colors.dart';
import 'package:task_manager/core/app_strings.dart';

class AddEditTask extends StatefulWidget {
  const AddEditTask({super.key});

  @override
  State<AddEditTask> createState() => _AddEditTaskState();
}

class _AddEditTaskState extends State<AddEditTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: Text('Add Task / Edit Task'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FieldLabel(text: AppStrings.tasksHeader),
          FieldLabel(text: AppStrings.descriptionHeader),

          FieldLabel(text: AppStrings.labelDueDate),
          FieldLabel(text: AppStrings.fieldPriority),
          FieldLabel(text: AppStrings.fieldStatus),

        ],
      ),
    );
  }
}
