import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class ResultList extends StatelessWidget {
  final String timeName;
  final String victories;
  final bool invertOrder;
  final bool winner;

  const ResultList({super.key, required this.timeName, required this.victories, required this.invertOrder, required this.winner,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: invertOrder
            ? [
                Expanded(
                  child: Text(
                    victories,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: winner ? ColorsApp.fonteSecundaria : ColorsApp.fonteTerciaria,
                    ),
                  ),
                ),
                
                Expanded(
                  flex: 2, 
                  child: Text(
                    timeName,
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
                    timeName,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                      color: ColorsApp.fontePrimaria,
                    ),
                  ),
                ),
                
                Expanded(
                  child: Text(
                    victories,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: winner ? ColorsApp.fonteSecundaria : ColorsApp.fonteTerciaria,
                    ),
                  ),
                ),
              ],
      ),
    );
  }
}
