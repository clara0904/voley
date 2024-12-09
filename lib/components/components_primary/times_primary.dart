import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';
class TimesPrimary extends StatelessWidget {
  final String nomeTime;
  final String jogadores;

  const TimesPrimary({
    super.key,
    required this.nomeTime,
    required this.jogadores,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            nomeTime,
            style: TextStyle(
              fontSize: 40,
              color: ColorsApp.fonteTerciaria,
            ),
          ),
          const SizedBox(width: 15),
          Text(
            jogadores,
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