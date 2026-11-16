import 'package:flutter/material.dart';
import 'package:task_manager/core/app_strings.dart';
import 'package:task_manager/core/colors.dart';
import 'package:task_manager/presentation/feature/home_page/widget/app_logo.dart';
import 'package:task_manager/presentation/feature/home_page/widget/stat_card.dart';
import 'package:task_manager/presentation/feature/home_page/widget/filter_button.dart';
import 'package:task_manager/presentation/feature/home_page/widget/task_card.dart';
import 'package:task_manager/core/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            AppLogo(),

            SizedBox(width: 4,),
            Text(AppStrings.appName, style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),)
          ],),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(color: AppColors.primary.withValues(alpha: 0.5),
                  borderRadius: .circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.35)
                    ),

                  ]
              ),
              child: Icon(Icons.search, color: AppColors.primaryLight,),

            ),
          )
        ],
      ),
      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.goodMorning,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.textMuted,
            ),),
            Text("Mahmud",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),),
            Row(
              spacing: 10,
              children: [
                Expanded(child: StatCard(icon: Icons.format_align_center, iconColor: AppColors.primary, count: 0, label: 'Total')),
                Expanded(child: StatCard(icon: Icons.schedule, iconColor: AppColors.warning, count: 0, label: 'Pending')),
                Expanded(child: StatCard(icon: Icons.check_circle, iconColor: AppColors.success, count: 0, label: 'Completed')),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(child: FilterButton(icon: Icons.check, label: 'All', isSelected: true, onTap: (){},)),
                Expanded(child: FilterButton(icon: Icons.check, label: 'Pending', isSelected: false, onTap: (){},)),
                Expanded(child: FilterButton(icon: Icons.check, label: 'Completed', isSelected: false, onTap: (){},)),
              ],
            ),
            SizedBox(height: 8,),
            TaskCard(task: Task(title: 'Finish onboarding mockups',
              description: 'Final term will be started soon be careful with the deadlines',
              dueDate: 'nov 16',
              priority: 'High',
              createdData: 'nov 2',
            ), onTap: (){}, onStatusTap: () {},),



          ],
        ),
      ),

      backgroundColor: AppColors.scaffoldBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColors.primary,
        child: Icon(Icons.add, color: AppColors.primaryLight,),
      ),




    );
  }
}
