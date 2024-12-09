import 'package:flutter/material.dart';
import 'package:voley_app/components/components_primary/times_primary.dart';
import 'package:voley_app/theme/colors.dart';
class TimesList extends StatelessWidget {
  const TimesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80, bottom: 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: RotatedBox(
              quarterTurns: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsApp.transparente,
                  border: Border.all(color: ColorsApp.fontePrimaria, width: 2),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: Text(
                  'TIMES',
                  style: TextStyle(
                    fontSize: 60,
                    color: ColorsApp.fontePrimaria,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                TimesPrimary(nomeTime: 'Atrasados', jogadores: '5'),
                TimesPrimary(nomeTime: 'Penetras', jogadores: '3'),
                TimesPrimary(nomeTime: 'Felizes', jogadores: '4'),
                TimesPrimary(nomeTime: 'Esquecidos', jogadores: '5'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}