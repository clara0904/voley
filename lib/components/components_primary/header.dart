import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('imagens/ball.png'),
            ),
            const SizedBox(width: 12),
            Stack(
              children: [
                Text(
                  'Volley',
                  style: TextStyle(
                    fontSize: 60,
                    color: ColorsApp.fontePrimaria,
                  ),
                ),
                Positioned(
                  bottom: 2,
                  left: 6,
                  child: Text(
                    'do fim de semana',
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorsApp.fontePrimaria,
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
