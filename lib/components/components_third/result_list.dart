import 'package:flutter/material.dart';

class ResultList extends StatelessWidget {
  final String timeName;
  final String victories;
  final bool invertOrder;
  final bool winner;

  const ResultList({
    super.key,
    required this.timeName,
    required this.victories,
    required this.invertOrder,
    required this.winner,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: invertOrder
              ? [
                  Text(
                    victories,
                    style: TextStyle(
                      fontSize: 25,
                      color: winner ? const Color(0xff2B4A8E) : Colors.yellow,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                  const SizedBox(width: 10), 
                  Text(
                    timeName,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                ]
              : [
                  Text(
                    timeName,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                  const SizedBox(width: 10), 
                  Text(
                    victories,
                    style: TextStyle(
                      fontSize: 25,
                      color: winner ? const Color(0xff2B4A8E) : Colors.yellow,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
