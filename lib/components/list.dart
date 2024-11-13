﻿import 'package:flutter/material.dart';
import 'package:voley_app/components/circle_button.dart';

class List extends StatelessWidget {
  final String tipoLance;
  final bool left;

  const List({
    super.key,
    required this.tipoLance,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 3, left: 3),
      child: Row(
        mainAxisAlignment: left ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (left) ...[
            const CircleButton(),
            const SizedBox(width: 15), 
          ],
          Text(
              tipoLance,
              style: const TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            if (!left) ...[
            const SizedBox(width: 15), 
            const CircleButton(),
          ],
        ],
      ),
    );
  }
}