import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class Times extends StatelessWidget {
  final String aOrB;
  final String timeName;
  final bool visible;
  const Times({super.key, required this.aOrB, required this.timeName, required this.visible});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
        radius: 20,
        backgroundColor: ColorsApp.backgroundSecundario,
        child: Text(
          aOrB,
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
              timeName,
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