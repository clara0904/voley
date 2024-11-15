import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xff2B4A8E),
      shape: const CircleBorder(),
      mini: true,
      child: const Icon(
        Icons.add,
        color: Colors.white, size: 23,
      ),
    );
  }
}