import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';
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
              color: ColorsApp.fonteTerciaria,
            ),
          ),
          const SizedBox(width: 15),
          Text(
            sizetime,
            style: TextStyle(
              fontSize: 60,
              color: ColorsApp.fonteSecundaria,
              fontWeight: FontWeight.bold,
            ),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Jogadores',
              style: TextStyle(                
                fontSize: 10,
                color: ColorsApp.fonteSecundaria,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}