import 'package:flutter/material.dart';

class TimesSecondary extends StatelessWidget {
  final String aOrB;
  final String timeName;
  final bool visible;
  const TimesSecondary({super.key, required this.aOrB, required this.timeName, required this.visible});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
          radius: 20,
          backgroundColor: const Color(0xffC2F2F8),
          child: Text(
            aOrB,
            style: const TextStyle(
              color: Color(0xff2B4A8E),
              fontSize: 20, 
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
            Visibility(
              visible: visible,
              child: Text(
                timeName,
                style: const TextStyle(
                  fontSize: 25, 
                  color: Color(0xff2B4A8E), 
                ),
              ),
            ),
        ],
      ),
    );
  }
}