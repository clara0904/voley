import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class ResultList extends StatelessWidget {
  final String nomeTime;
  final String pontuacao;
  final bool inverteOrdem;
  final bool vencedor;

  const ResultList({super.key, required this.nomeTime, required this.pontuacao, required this.inverteOrdem, required this.vencedor,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: inverteOrdem
            ? [
                Expanded(
                  child: Text(
                    pontuacao,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: vencedor ? ColorsApp.fonteSecundaria : ColorsApp.fonteTerciaria,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                
                Expanded(
                  flex: 2, 
                  child: Text(
                    nomeTime,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      color: ColorsApp.fontePrimaria,
                    ),
                  ),
                ),
              ]
            : [
                Expanded(
                  flex: 2, 
                  child: Text(
                    nomeTime,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                      color: ColorsApp.fontePrimaria,
                    ),
                  ),
                ),
                
                Expanded(
                  child: Text(
                    pontuacao,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: vencedor ? ColorsApp.fonteSecundaria : ColorsApp.fonteTerciaria,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
      ),
    );
  }
}
