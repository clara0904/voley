import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class Court extends StatelessWidget {
  final bool visibilidadeDireita;
  final bool visibilidadeEsquerda;
  final String scoreLeft;
  final String scoreRight;
  const Court ({
    super.key, 
    required this.visibilidadeDireita, 
    required this.visibilidadeEsquerda, 
    required this.scoreLeft,
    required this.scoreRight
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: ColorsApp.quadras, 
              border: Border.all(color: ColorsApp.fontePrimaria, width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Visibility(
                  visible: visibilidadeEsquerda,
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('imagens/ball.png'),
                  ),
                ),
                Text(
                  scoreLeft,
                  style: TextStyle(
                    fontSize: 70,
                    color: ColorsApp.fontePrimaria,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: ColorsApp.quadras,
              border: Border.all(color: ColorsApp.fontePrimaria, width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Visibility(
                  visible: visibilidadeDireita,
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('imagens/ball.png'),
                  ),
                ),
                Text(
                  scoreRight,
                  style: TextStyle(
                    fontSize: 70,
                    color: ColorsApp.fontePrimaria,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}