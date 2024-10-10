import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/categories_grid_widget.dart';
import 'package:task/widgets/courses_list_widget.dart';
import 'package:task/widgets/promotion_horizontal_scroll_widget.dart';
import '../widgets/user_greeting_widget.dart';
import '../widgets/online_offline_toggle.dart';
import '../widgets/promotion_course_card_widget.dart';
import '../widgets/toppers_list_widget.dart';
import '../widgets/popular_course_widget.dart';
import '../widgets/course_section_title.dart';
import '../widgets/refer_and_earn_widget.dart';
import '../widgets/bottom_navigation_widget.dart';

class EnrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Enroll Screen')),
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserGreetingWidget(),
              OnlineOfflineToggle(),
              SizedBox(height: 10),
              PromotionHorizontalScrollWidget(),
              SizedBox(height: 10),
              // SizedBox(height: 10),
              CategoriesGridWidget(),
              SizedBox(height: 10),
              ToppersListWidget(),
              SizedBox(height: 10),
              CoursesListWidget(),
              SizedBox(height: 10),
              ReferAndEarnWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
