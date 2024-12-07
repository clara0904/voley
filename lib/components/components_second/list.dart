import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';


class List extends StatelessWidget {
  final String tipoLance;
  final bool left;
  final Widget button;

  const List({
    super.key,
    required this.tipoLance,
    required this.left,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 3, left: 3),
      child: Row(
        mainAxisAlignment: left ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (left) ...[
            button,
            const SizedBox(width: 15), 
          ],
          Text(
              tipoLance,
              style: TextStyle(
                fontSize: 35,
                color: ColorsApp.fontePrimaria,
              ),
            ),
            if (!left) ...[
            const SizedBox(width: 15), 
            button,
          ],
        ],
      ),
    );
  }
}