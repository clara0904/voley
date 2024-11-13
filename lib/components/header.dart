import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('imagens/ball.png'),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Volley',
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
              Text(
                'do fim de semana',
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}