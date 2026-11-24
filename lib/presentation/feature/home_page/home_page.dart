import 'package:flutter/material.dart';
import 'package:task_manager/core/app_strings.dart';
import 'package:task_manager/core/colors.dart';
import 'package:task_manager/presentation/add%20edit%20task/widget/add_edit_task.dart';
import 'package:task_manager/presentation/feature/home_page/widget/app_logo.dart';
import 'package:task_manager/presentation/feature/home_page/widget/stat_card.dart';
import 'package:task_manager/presentation/feature/home_page/widget/filter_button.dart';
import 'package:task_manager/presentation/feature/home_page/widget/task_card.dart';
import 'package:task_manager/core/task.dart';
import 'package:task_manager/presentation/feature/home_page/widget/empty_task.dart';
import 'package:task_manager/presentation/feature/task%20details/task_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Task> _tasks = demoTasks;
  List<Task> get tasks => _tasks;

  String _selectedFilter = AppStrings.filterAll;

  List<Task> get _visibleTasks {
    if(_selectedFilter == AppStrings.pendingLabel){
      return _tasks.where((task)=> task.isCompleted == false).toList();
    } else if(_selectedFilter == AppStrings.completedLabel){
      return _tasks.where((task)=> task.isCompleted == true).toList();
    } else {
      return _tasks;
    }

  }

  int get _totalTaskCount =>
      _tasks.where((task) => task.isCompleted == true).length;

  int get _pendingTaskCount =>
      _tasks.where((task) => task.isCompleted == false).length;

  void _onFilterTap(String filter){
    setState(() {
      _selectedFilter = filter;
    });

  }

  void _onStatusTap(Task task){
    setState(() {
      task.isCompleted = !task.isCompleted;
    });
  }

  void _goToAddTask(){}
  void _goToDetails(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TaskDetails()));
  }






  @override
  Widget build(BuildContext context) {
    final List<Task> visibleTasks = _visibleTasks;
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
                Expanded(child: StatCard(icon: Icons.format_align_center, iconColor: AppColors.primary, count: _tasks.length, label: 'Total')),
                Expanded(child: StatCard(icon: Icons.schedule, iconColor: AppColors.warning, count: _pendingTaskCount, label: 'Pending')),
                Expanded(child: StatCard(icon: Icons.check_circle, iconColor: AppColors.success, count: _totalTaskCount, label: 'Completed')),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(child: FilterButton(icon: Icons.check, label: 'All', isSelected: _selectedFilter == AppStrings.filterAll, onTap: () => _onFilterTap(AppStrings.filterAll),)),
                Expanded(child: FilterButton(icon: Icons.check, label: 'Pending', isSelected: _selectedFilter == AppStrings.filterPending, onTap: ()=> _onFilterTap(AppStrings.filterPending),)),
                Expanded(child: FilterButton(icon: Icons.check, label: 'Completed', isSelected: _selectedFilter == AppStrings.filterCompleted, onTap: ()=> _onFilterTap(AppStrings.filterCompleted),)),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.tasksHeader,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textMuted,
                  ),),
                Text('${visibleTasks.length} ${AppStrings.tasksHeader}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textMuted,

                  )),
              ],

            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: visibleTasks.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: TaskCard(
                      task: visibleTasks[index],
                      onTap: () => _goToDetails(),
                      onStatusTap: () => _onStatusTap(visibleTasks[index]),

                    ),
                  );
                }
              ),
            )
            // TaskCard(task: Task(title: 'Finish onboarding mockups',
            //   description: 'Final term will be started soon be careful with the deadlines',
            //   dueDate: 'nov 16',
            //   priority: 'High',
            //   createdData: 'nov 2',
            // ), onTap: (){}, onStatusTap: () {},),



          ],
        ),
      ),



      backgroundColor: AppColors.scaffoldBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddEditTask()));
        },
        backgroundColor: AppColors.primary,
        child: Icon(Icons.add, color: AppColors.primaryLight,),
      ),





    );
  }
}
