import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  final String nomeTime;
  final String victories;
  const TimeLine({super.key, required this.nomeTime, required this.victories});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15.0),
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$nomeTime: ',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'ConcertOne',
                ),
              ),
              TextSpan(
                text: victories,
                style: const TextStyle(
                  fontSize: 30, 
                  color: Color(0xff2B4A8E),
                  fontFamily: 'ConcertOne',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}