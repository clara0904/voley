import 'package:flutter/material.dart';
class TimesPrimary extends StatelessWidget {
  final String time;
  final String sizetime;

  const TimesPrimary({
    super.key,
    required this.time,
    required this.sizetime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 40,
              color: Colors.yellow[500],
            ),
          ),
          const SizedBox(width: 15),
          Text(
            sizetime,
            style: const TextStyle(
              fontSize: 60,
              color: Color(0xff2B4A8E),
              fontWeight: FontWeight.bold,
            ),
          ),
          const RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Jogadores',
              style: TextStyle(                
                fontSize: 10,
                color: Color(0xff2B4A8E),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}