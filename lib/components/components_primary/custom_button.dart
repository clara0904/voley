import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';
class CustomButton extends StatelessWidget {
  final String nameButton;
  final Color backgroundColor;
  final double textSize;
  final bool comBorder;
  final void Function() onPressed;

  const CustomButton({
    super.key,
    required this.nameButton,
    required this.backgroundColor,
    required this.textSize,
    required this.onPressed,
    this.comBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          minimumSize: const Size(250, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: comBorder
                ? BorderSide(
                    color: ColorsApp.fontePrimaria,
                    width: 2,
                  )
                : BorderSide.none,
          ),
        ),
        child: Text(
          nameButton,
          style: TextStyle(
            fontSize: textSize,
            color: ColorsApp.fontePrimaria,
          ),
        ),
      ),
    );
  }
}