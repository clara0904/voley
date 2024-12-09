import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class TimeLine extends StatelessWidget {
  final String nomeTime;
  final String vitorias;
  const TimeLine({super.key, required this.nomeTime, required this.vitorias});

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
                style: TextStyle(
                  fontSize: 30,
                  color: ColorsApp.fontePrimaria,
                  fontFamily: 'ConcertOne',
                ),
              ),
              TextSpan(
                text: vitorias,
                style: TextStyle(
                  fontSize: 30, 
                  color: ColorsApp.fonteSecundaria,
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