import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/course_thumbnail_widget.dart';

class CourseCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String instructor;
  final String language;

  const CourseCardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.instructor,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.bg,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2, color: AppColors.grey),
          boxShadow: [BoxShadow(color: AppColors.cardShadow)]),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(instructor, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 5),
              Icon(Icons.verified, color: AppColors.green),
            ],
          ),
          // SizedBox(
          //   height: 5,
          // ),////////////
          AspectRatio(
            aspectRatio: 18 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CourseThumbnailWidget(
                  image: imageUrl, lang: language, live: true),
            ),
          ),
          // SizedBox(height: 8),
          Center(
              child: Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold))),
          // SizedBox(height: 8),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(AppColors.indigo),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                  padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(vertical: 12)),
                ),
                onPressed: () {},
                child: Text('Invite')),
          ),
        ],
      ),
    );
  }
}
