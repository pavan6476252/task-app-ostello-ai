import 'package:flutter/material.dart';
import 'package:task/models/popular_course_model..dart';
import 'package:task/widgets/course_card_widget.dart';
import 'package:task/widgets/course_section_title.dart';
import '../models/all_course_model.dart';
import '../widgets/popular_course_widget.dart';
import '../widgets/all_course_widget.dart';

class CoursesListWidget extends StatelessWidget {
  const CoursesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final popularCourses = [
      PopularCourse(
        instructor: 'Mr. Sampath',
        language: 'Hinglish',
        courseName: 'Class 10th - Mathematics',
        imageUrl: 'assets/course.png',
      ),
      PopularCourse(
        instructor: 'Mr. Sampath',
        language: 'Hinglish',
        courseName: 'Class 10th - Mathematics',
        imageUrl: 'assets/course.png',
      ),
    ];

    final allCourses = [
      AllCourse(
        instructor: 'Mr. Sampath',
        language: 'Hinglish',
        courseName: 'ARAMBH - NEET DROPPER BATCH',
        imageUrl: 'assets/course.png',
        syllabus: 'Full Syllabus',
        price: '5000',
        originalPrice: '10000',
        discount: '50%OFF',
      ),
      AllCourse(
        instructor: 'Mr. Sampath',
        language: 'Hinglish',
        courseName: 'ARAMBH - NEET DROPPER BATCH',
        imageUrl: 'assets/course.png',
        syllabus: 'Full Syllabus',
        price: '5000',
        originalPrice: '10000',
        discount: '50%OFF',
      ),
    ];

    return Column(children: [
      CourseSectionTitle(
        title: 'Popular Courses',
        viewAll: true,
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 260,
        width: double.maxFinite,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: popularCourses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 16 : 0),
              child: AspectRatio(
                aspectRatio: 305 / 265,
                child: CourseCardWidget(
                  imageUrl: popularCourses[index].imageUrl,
                  title: popularCourses[index].courseName,
                  instructor: popularCourses[index].instructor,
                  language: popularCourses[index].language,
                ),
              ),
            );
          },
        ),
      ),
      SizedBox(
        height: 10,
      ),
      CourseSectionTitle(
        title: 'All Courses',
        viewAll: true,
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 350,
        width: double.maxFinite,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: allCourses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 16 : 0),
              child: AspectRatio(
                  aspectRatio: 305 / 350,
                  child: AllCourseWidget(course: allCourses[index])),
            );
          },
        ),
      )
    ]);
  }
}
