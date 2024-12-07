import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class CircleButton extends StatelessWidget {
  final Function onPressed;
  const CircleButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: () {
        onPressed();
      },
      backgroundColor: ColorsApp.fonteSecundaria,
      shape: const CircleBorder(),
      mini: true,
      child: Icon(
        Icons.add,
        color: ColorsApp.fontePrimaria, size: 23,
      ),
    );
  }
}