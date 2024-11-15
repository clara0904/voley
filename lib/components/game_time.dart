import 'package:flutter/material.dart';

class GameTime extends StatelessWidget {
  const GameTime({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "Tempo de jogo: 1:14'",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'ConcertOne',
            ),
          ),
          TextSpan(
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
