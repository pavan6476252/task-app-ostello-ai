import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class CategoriesGridWidget extends StatelessWidget {
  CategoriesGridWidget({super.key});

  final List<Map<String, String>> categories = [
    {
      "logo":
          "assets/free-courses-2.png", // Ensure the image has the correct extension
      "label": "Free Courses",
    },
    {
      "logo": "assets/attendance.png",
      "label": "Attendance",
    },
    {
      "logo": "assets/store.png",
      "label": "Store",
    },
    {
      "logo": "assets/assesment.png",
      "label": "Assessment",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 9),
            itemCount: categories.length,
            itemBuilder: (context, index) => Card(
                  color: AppColors.bg,
                  shadowColor: AppColors.cardShadow,
                  child: Container(
                    width: 79,
                    height: 89,
                    padding: EdgeInsets.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          categories[index]["logo"]!,
                          height: 55,
                        ),
                        Text(
                          categories[index]["label"]!,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )));
  }
}
