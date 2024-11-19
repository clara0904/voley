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
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right:8.0),
                  child: Text(
                    'do fim de semana',
                    style: TextStyle(
                      fontSize: 15,
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