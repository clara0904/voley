import 'package:flutter/material.dart';
import 'package:voley_app/theme/colors.dart';

class SecondaryButton extends StatelessWidget {
  final String nomeBotao;
  final Color corFonte;
  final Function onPressed;
  const SecondaryButton({super.key, required this.nomeBotao, required this.corFonte, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.fonteSecundaria,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: ColorsApp.fontePrimaria,
            width: 2,
          )
              
        ),
      ),
      child: Text(
        nomeBotao,
        style: TextStyle(
          fontSize: 32,
          color: corFonte,
        ),
      ),
    );
  }
}