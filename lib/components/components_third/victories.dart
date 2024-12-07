import 'package:flutter/material.dart';
import 'package:voley_app/components/components_third/time_line.dart';

class Victories extends StatelessWidget {
  const Victories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 55,
          decoration: const BoxDecoration(
          color: Color.fromARGB(158, 191, 234, 239),
          border: Border(
            top: BorderSide(
              color: Colors.white, 
              width: 2.0, 
            ),
            bottom: BorderSide(
              color: Colors.white, 
              width: 2.0, 
            ),
          ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TimeLine(nomeTime: 'Atrasados',victories: '3',),
              TimeLine(nomeTime: 'Esquecidos',victories: '1',),
              TimeLine(nomeTime: 'Penetras',victories: '5',),
              TimeLine(nomeTime: 'Felizes',victories: '7',),
            ],
          )
        ),
      ),
    );
  }
}