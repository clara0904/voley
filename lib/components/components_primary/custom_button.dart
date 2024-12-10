import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';
class CustomButton extends StatelessWidget {
  final String nameButton;
  final Color corBackground;
  final double tamText;
  final bool comBorder;
  final void Function() onPressed;

  const CustomButton({
    super.key,
    required this.nameButton,
    required this.corBackground,
    required this.tamText,
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
          backgroundColor: corBackground,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          minimumSize: const Size(250, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
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
            fontSize: tamText,
            color: ColorsApp.fontePrimaria,
          ),
        ),
      ),
    );
  }
}