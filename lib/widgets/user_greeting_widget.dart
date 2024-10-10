import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserGreetingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return ListTile(
        leading:
            CircleAvatar(backgroundImage: AssetImage('assets/profile.png')),
        title: RichText(
          text: TextSpan(
              text: "Hi, ",
              style: style.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold, color: AppColors.textBlack),
              children: [
                TextSpan(
                    text: 'Krishna',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[800]))
              ]),
        ),
        subtitle: Text(
          'Better yourself each day everyday',
          style: style.labelSmall!
              .copyWith(fontWeight: FontWeight.w300, color: AppColors.slate),
        ),
        trailing: Badge(
            padding: EdgeInsetsDirectional.all(0),
            backgroundColor: AppColors.red,
            label: Text(
              "1",
              style: TextStyle(fontSize: 10),
            ),
            child: SvgPicture.asset(
              'assets/notification.svg',
              width: 24,
              color: AppColors.textBlack,
              height: 24,
            )));
  }
}
