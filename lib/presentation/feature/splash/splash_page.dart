import 'package:flutter/material.dart';
import 'package:task_manager/core/app_strings.dart';
import 'package:task_manager/core/colors.dart';
import 'package:task_manager/presentation/feature/home_page/home_page.dart';
import 'dart:async';
import 'package:task_manager/presentation/add edit task/widget/add_edit_task.dart';




class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState(){

    super.initState();
    _timer = Timer(Duration(seconds: 3), _goToHome);
  }
  @override
  void dispose(){
    _timer?.cancel();
    super.dispose();
  }

  void _goToHome(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>AddEditTask()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(height: 85, width: 85,
            decoration: BoxDecoration(color: AppColors.primary,
            borderRadius: .circular(24),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.95)
                )
              ]
            ),
            child: Icon(Icons.check, color: AppColors.primaryLight,
            size: 40,),

            ),

          ),
          SizedBox(height: 16,),
          Text(AppStrings.appName , style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          )),
          Text(AppStrings.onboardingSubtitle, style: TextStyle(
            fontSize: 16,
            color: AppColors.textSecondary,
          ))
        ],
      ),
    );
  }
}
