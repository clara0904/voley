import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class Times extends StatelessWidget {
  final String timeAB;
  final String nomeTime;
  final bool visible;
  const Times({super.key, required this.timeAB, required this.nomeTime, required this.visible});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
        radius: 20,
        backgroundColor: ColorsApp.backgroundSecundario,
        child: 
          Text(
            timeAB,
            style: TextStyle(
              color: ColorsApp.fonteSecundaria,
              fontSize: 20, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Visibility(
          visible: visible,
          child: Text(
            nomeTime,
            style: TextStyle(
              fontSize: 25, 
              color: ColorsApp.fonteSecundaria,
            ),
          ),
        ),
      ],
    );
  }
}