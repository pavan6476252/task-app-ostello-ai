import 'package:flutter/material.dart';
import 'package:task/widgets/promotion_course_card_widget.dart';

class PromotionHorizontalScrollWidget extends StatefulWidget {
  const PromotionHorizontalScrollWidget({super.key});

  @override
  State<PromotionHorizontalScrollWidget> createState() =>
      _PromotionHorizontalScrollWidgetState();
}

class _PromotionHorizontalScrollWidgetState
    extends State<PromotionHorizontalScrollWidget> {
  List<Color?> colors = [const Color.fromARGB(255, 241, 210, 120), const Color.fromARGB(255, 246, 169, 145)];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206,
      width: double.maxFinite,
      // aspectRatio: 18 / 9,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PromotionCourseCardWidget(
            color: colors[0],
            title: 'Live Sections on JEE Exams',
            subtitle: 'Live Sections on JEE Exam',
            buttonText: 'Join',
            imageUrl: 'assets/jee.png',
            isLive: true,
          ),
          PromotionCourseCardWidget(
            color: colors[1],
            title: 'Free Courses',
            subtitle: 'Live Sections on JEE\nExam',
            buttonText: 'Join',
            imageUrl: 'assets/free-courses.png',
          ),
        ],
      ),
    );
  }
}
