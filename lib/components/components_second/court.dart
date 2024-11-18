import 'package:flutter/material.dart';

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
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: const Color(0xffF77859), 
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.white, width: 3), 
                ),
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
                    style: const TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
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
                    style: const TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}