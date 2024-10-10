import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/constants.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // elevation: 0,

      useLegacyColorScheme: false,
      backgroundColor: Colors.white,
      selectedLabelStyle: TextStyle(color: AppColors.textGrey, fontSize: 12),
      unselectedLabelStyle: TextStyle(color: AppColors.textGrey, fontSize: 12),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              'assets/svgs/home.svg',
            ),
          ),
          activeIcon: CircleAvatar(
            backgroundColor: AppColors.violet.withOpacity(0.1),
            child: SvgPicture.asset(
              'assets/svgs/home.svg',
              color: AppColors.violet,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              'assets/svgs/teacher.svg',
            ),
          ),
          activeIcon: CircleAvatar(
            backgroundColor: AppColors.violet.withOpacity(0.1),
            child: SvgPicture.asset(
              'assets/svgs/teacher.svg',
              color: AppColors.violet,
            ),
          ),
          label: 'Batches',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              'assets/svgs/message.svg',
            ),
          ),
          activeIcon: CircleAvatar(
            backgroundColor: AppColors.violet.withOpacity(0.1),
            child: SvgPicture.asset(
              'assets/svgs/message.svg',
              color: AppColors.violet,
            ),
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              'assets/svgs/profile-circle.svg',
            ),
          ),
          activeIcon: CircleAvatar(
            backgroundColor: AppColors.violet.withOpacity(0.1),
            child: SvgPicture.asset(
              'assets/svgs/profile-circle.svg',
              color: AppColors.violet,
            ),
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
