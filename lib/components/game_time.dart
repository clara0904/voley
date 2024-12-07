import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class GameTime extends StatelessWidget {
  final bool visible;
  final String minutosJogo;
  final String segundosJogo;
  const GameTime({super.key, required this.visible, required this.minutosJogo, required this.segundosJogo});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          if (visible)
          TextSpan(
            text: "Tempo de jogo: ",
            style: TextStyle(
              fontSize: 20,
              color: ColorsApp.fontePrimaria,
              fontFamily: 'ConcertOne',
            ),
          ),
          TextSpan(
            text: minutosJogo,
            style: TextStyle(
              fontSize: 20,
              color: ColorsApp.fontePrimaria,
              fontFamily: 'ConcertOne',
            ),
          ),
          TextSpan(
            text: segundosJogo,
            style: TextStyle(
              fontSize: 15, 
              color: ColorsApp.fontePrimaria,
              fontFamily: 'ConcertOne',
            ),
          ),
        ],
      ),
    );
  }
}
