import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';


class List extends StatelessWidget {
  final String tipoLance;
  final bool esquerda;
  final Widget botao;

  const List({
    super.key,
    required this.tipoLance,
    required this.esquerda,
    required this.botao,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 3, left: 3),
      child: Row(
        mainAxisAlignment: esquerda ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (esquerda) ...[
            botao,
            const SizedBox(width: 10), 
          ],
          Expanded(
            child: Text(
                tipoLance,
                style: TextStyle(
                  fontSize: 32,
                  color: ColorsApp.fontePrimaria,
                ),
                overflow: TextOverflow.ellipsis,
              ),
          ),
            if (!esquerda) ...[
            const SizedBox(width: 10), 
            botao,
          ],
        ],
      ),
    );
  }
}