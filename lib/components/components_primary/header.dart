import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('imagens/ball.png'),
            ),
            SizedBox(width: 12),
            Stack(
              children: [
                Text(
                  'Volley',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 6,
                  left: 5,
                  child: Text(
                    'do fim de semana',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      height: 0.1, 
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
