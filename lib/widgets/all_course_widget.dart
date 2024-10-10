import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/course_thumbnail_widget.dart';
import '../models/all_course_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllCourseWidget extends StatelessWidget {
  final AllCourse course;

  const AllCourseWidget({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bg,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2, color: AppColors.grey),
        boxShadow: [BoxShadow(color: AppColors.cardShadow)],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  course.instructor,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 5),
              Icon(Icons.verified, color: AppColors.green),
            ],
          ),
          AspectRatio(
            aspectRatio: 18 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CourseThumbnailWidget(
                image: course.imageUrl,
                lang: course.language,
                live: true,
              ),
            ),
          ),
          Center(
            child: Text(
              course.courseName,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/broadcast.svg',
                          width: 14,
                          color: AppColors.textBlack,
                          height: 14,
                        ),
                        SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            course.syllabus,
                            style: style.labelSmall,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/group2.svg',
                          width: 14,
                          color: AppColors.textBlack,
                          height: 14,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Live + Recorded",
                          style: style.labelSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/group.svg',
                          width: 14,
                          color: AppColors.textBlack,
                          height: 14,
                        ),
                        SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            "For NEET 2025 & 2026 Aspirants",
                            overflow: TextOverflow.ellipsis,
                            style: style.labelSmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/group1.svg',
                          width: 14,
                          color: AppColors.textBlack,
                          height: 14,
                        ),
                        SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            "Batch starts on 16th Aug",
                            style: style.labelSmall,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              text: "₹ ${course.price}",
              style: style.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "${course.originalPrice}",
                  style: style.titleSmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: AppColors.textGrey,
                      decoration: TextDecoration.lineThrough),
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "${course.discount}",
                  style: style.titleSmall?.copyWith(
                      fontWeight: FontWeight.w400, color: AppColors.red),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(AppColors.indigo),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 12)),
              ),
              onPressed: () {},
              child: Text('Invite'),
            ),
          ),
        ],
      ),
    );
  }
}
