import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/widgets/promotion_horizontal_scroll_widget.dart';

class PromotionCourseCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final String imageUrl;
  final bool isLive;
  final Color? color;

  PromotionCourseCardWidget({
    required this.title,
    required this.buttonText,
    required this.imageUrl,
    this.isLive = false,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Card(
        color: color,
        margin: EdgeInsets.all(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      imageUrl,
                      width: 180,
                      height: 117,
                    ))),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      Text(subtitle,
                          style: TextStyle(fontWeight: FontWeight.w400)),
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 35)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor:
                            WidgetStatePropertyAll(AppColors.slate),
                        foregroundColor:
                            WidgetStatePropertyAll(Colors.grey[100])),
                    onPressed: () {},
                    child: Text(buttonText),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
