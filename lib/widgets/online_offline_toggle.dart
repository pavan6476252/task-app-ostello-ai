import 'package:flutter/material.dart';
import 'package:task/constants.dart';

// OnlineOfflineToggle widget that toggles between "Online" and "Offline"
class OnlineOfflineToggle extends StatefulWidget {
  @override
  State<OnlineOfflineToggle> createState() => _OnlineOfflineToggleState();
}

class _OnlineOfflineToggleState extends State<OnlineOfflineToggle> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 238, 238, 238), width: 2),
        color: AppColors.grey,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "Online",
              selected: isOnline,
              onPressed: () {
                setState(() {
                  isOnline = true;
                });
              },
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "Offline",
              selected: !isOnline,
              onPressed: () {
                setState(() {
                  isOnline = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.selected,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final bool selected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: selected ? AppColors.slate : null,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: selected ? AppColors.bg : AppColors.textGrey,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
