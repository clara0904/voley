import 'package:flutter/material.dart';

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
                      color: winner ? const Color(0xff2B4A8E) : Colors.yellow,
                    ),
                  ),
                ),
                
                Expanded(
                  flex: 2, 
                  child: Text(
                    timeName,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
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
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                
                Expanded(
                  child: Text(
                    victories,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: winner ? const Color(0xff2B4A8E) : Colors.yellow,
                    ),
                  ),
                ),
              ],
      ),
    );
  }
}
