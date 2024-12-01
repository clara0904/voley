import 'package:flutter/material.dart';

class GameTime extends StatelessWidget {
  final bool visible;
  const GameTime({super.key, required this.visible});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          if (visible)
          const TextSpan(
            text: "Tempo de jogo: ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'ConcertOne',
            ),
          ),
          const TextSpan(
            text: "1:14'",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'ConcertOne',
            ),
          ),
          const TextSpan(
            text: "00''",
            style: TextStyle(
              fontSize: 15, 
              color: Colors.white,
              fontFamily: 'ConcertOne',
            ),
          ),
        ],
      ),
    );
  }
}
