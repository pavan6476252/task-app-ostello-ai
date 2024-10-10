import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseThumbnailWidget extends StatelessWidget {
  final String image;
  final String lang;
  final bool live;
  const CourseThumbnailWidget(
      {super.key, required this.image, required this.lang, required this.live});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Chip(
                    label: Text(
                      lang,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    side: BorderSide(color: Colors.transparent),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    color: WidgetStatePropertyAll(AppColors.grey)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton.icon(
                  icon: SvgPicture.asset(
                    'assets/svgs/ellipse.svg',
                    width: 6,
                    height: 6,
                    color: Colors.red,
                  ),
                  label: Text(
                    "Live",
                    style: TextStyle(
                        color: AppColors.red, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
