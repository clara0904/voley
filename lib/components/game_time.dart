import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class GameTime extends StatelessWidget {
  final bool visible;
  const GameTime({super.key, required this.visible});

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
            text: "1:14'",
            style: TextStyle(
              fontSize: 20,
              color: ColorsApp.fontePrimaria,
              fontFamily: 'ConcertOne',
            ),
          ),
          TextSpan(
            text: "00''",
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
