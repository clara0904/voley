import 'package:flutter/material.dart';
import 'package:voley_app/components/times_primary.dart';
class TimesList extends StatelessWidget {
  const TimesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RotatedBox(
            quarterTurns: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                border: Border.all(color: Colors.white, width: 2),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: const Text(
                'TIMES',
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const Expanded(
          child: Column(
            children: [
              TimesPrimary(time: 'Sicranos', sizetime: '3'),
              TimesPrimary(time: 'Autoconvidados', sizetime: '3'),
              TimesPrimary(time: 'Ziraldos', sizetime: '4'),
              TimesPrimary(time: 'Sparrings', sizetime: '5'),
            ],
          ),
        ),
      ],
    );
  }
}