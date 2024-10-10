import 'package:flutter/material.dart';

class ReferAndEarnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 194, 176),
      child: Row(
        children: [
          SizedBox(width: 25),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Refer & Earn',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  Text('Cashback & Rewards',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                      'Invite Your Friends & Get Up to ₹500 After Registration'),
                  SizedBox(height: 8),
                  ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.grey[900]),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 45, vertical: 8)),
                      ),
                      onPressed: () {},
                      child: Text('Invite')),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Image.asset(
              
              'assets/refer-earn.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
