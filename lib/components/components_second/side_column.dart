import 'package:flutter/material.dart';
import 'package:voley_app/components/components_second/circle_button.dart';
import 'list.dart';

class SideColumn extends StatelessWidget {
  final bool isLeft;
  final Function onPressed;
  const SideColumn({super.key, required this.isLeft, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Expanded( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              List(tipoLance: 'Ace', left: isLeft, button: CircleButton(onPressed: onPressed),),
              List(tipoLance: 'Ataque', left: isLeft, button: CircleButton(onPressed: onPressed),),
              List(tipoLance: 'Bloqueio', left: isLeft, button: CircleButton(onPressed: onPressed),),
              List(tipoLance: 'Erro', left: isLeft, button: CircleButton(onPressed: onPressed),),
            ],
          ),
        ),
      ],
    );
  }
}