import 'package:flutter/material.dart';
import 'package:voley_app/components/components_second/circle_button.dart';
import 'list.dart';

class SideColumn extends StatelessWidget {
  final bool eEsquerda;
  final Function onPressed;
  const SideColumn({super.key, required this.eEsquerda, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Expanded( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              List(tipoLance: 'Ace', esquerda: eEsquerda, botao: CircleButton(onPressed: onPressed),),
              List(tipoLance: 'Ataque', esquerda: eEsquerda, botao: CircleButton(onPressed: onPressed),),
              List(tipoLance: 'Bloqueio', esquerda: eEsquerda, botao: CircleButton(onPressed: onPressed),),
              List(tipoLance: 'Erro', esquerda: eEsquerda, botao: CircleButton(onPressed: onPressed),),
            ],
          ),
        ),
      ],
    );
  }
}