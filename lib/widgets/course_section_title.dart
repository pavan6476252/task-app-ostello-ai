import 'package:flutter/material.dart';
import 'package:task/constants.dart';

class CourseSectionTitle extends StatelessWidget {
  final String title;
  final bool viewAll;

  CourseSectionTitle({required this.title, this.viewAll = false});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: style.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
          if (viewAll)
            Text(
              'View All',
              style: style.titleMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.red,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.red),
            ),
        ],
      ),
    );
  }
}
