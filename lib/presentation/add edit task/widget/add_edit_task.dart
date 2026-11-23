import 'package:flutter/material.dart';
import 'package:task_manager/presentation/add edit task/widget/field_label.dart';
import 'package:task_manager/core/colors.dart';
import 'package:task_manager/core/app_strings.dart';
import 'package:task_manager/presentation/add%20edit%20task/widget/priority_tab.dart';
import 'package:task_manager/presentation/add%20edit%20task/widget/task_field.dart';
import 'package:task_manager/presentation/core/square_icon_button.dart';

class AddEditTask extends StatefulWidget {
  const AddEditTask({super.key});

  @override
  State<AddEditTask> createState() => _AddEditTaskState();
}

class _AddEditTaskState extends State<AddEditTask> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: Text('Add Task / Edit Task'),
        centerTitle: true,
        leading: SquareIconButton(icon: Icons.arrow_back,
        onTap: (){ Navigator.of(context).pop();},),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FieldLabel(text: AppStrings.tasksHeader),
            TaskField( controller: _titleController, hintText: AppStrings.taskTitleHint, ),
            FieldLabel(text: AppStrings.descriptionHeader),
            TaskField(controller: _descriptionController, hintText: AppStrings.detailDescriptionBody, maxLines: 4,),

            FieldLabel(text: AppStrings.labelDueDate),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('Select Date'),
                  ),
                  SizedBox(width: 220,),
                  IconButton(onPressed: (){}, icon:Icon(Icons.calendar_month))
                ],
              ),
            ),
            FieldLabel(text: AppStrings.fieldPriority),
            Row(
             spacing: 10,
              children: [
                Expanded(
                  child: PriorityTab(
                    label: AppStrings.priorityHigh,
                    isSelected: true,
                    onTap: (){},
                  ),
                ),
                Expanded(
                  child: PriorityTab(
                    label: AppStrings.priorityMedium,
                    isSelected: true,
                    onTap: (){},
                  ),
                ),
                Expanded(
                  child: PriorityTab(
                    label: AppStrings.priorityLow,
                    isSelected: true,
                    onTap: (){},
                  ),
                ),
              ],
            ),
            FieldLabel(text: AppStrings.fieldStatus),

          ],
        ),
      ),
    );
  }
}
