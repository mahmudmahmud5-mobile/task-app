import 'package:flutter/material.dart';
import 'package:task_manager/core/app_strings.dart';
import 'package:task_manager/core/colors.dart';

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
            Container(height: 24, width: 24,
              decoration: BoxDecoration(color: AppColors.primary,
                  borderRadius: .circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.95)
                    )
                  ]
              ),
              child: Icon(Icons.check, color: AppColors.primaryLight,
                size: 13,),

            ),
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
            Container(

              width: 120,
              decoration: BoxDecoration(color: AppColors.surface,
                  borderRadius: .circular(24),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.95)
                    )
                  ]
              ),

              margin: EdgeInsets.symmetric(vertical: 16),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.mail_lock, color: AppColors.scaffoldBackground,),
                    SizedBox(height: 4,),
                    Text("5",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),),
                    SizedBox(height: 4,),
                    Text(AppStrings.totalLabel,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textMuted,
                      ),),



                  ],
                ),
              ),
            ),


          ],
        ),
      ),




    );
  }
}
