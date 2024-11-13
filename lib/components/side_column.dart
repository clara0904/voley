import 'package:flutter/material.dart';
import 'list.dart';

class SideColumn extends StatelessWidget {
  final bool isLeft;
  const SideColumn({super.key, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Expanded( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              List(tipoLance: 'Ace', left: isLeft,),
              List(tipoLance: 'Ataque', left: isLeft),
              List(tipoLance: 'Bloqueio', left: isLeft),
              List(tipoLance: 'Erro', left: isLeft),
            ],
          ),
        ),
      ],
    );
  }
}