import 'package:flutter/material.dart';
import 'package:voley_app/screens/modal_screen.dart';

class CheckVictory {
  bool verificaVitoria(String vencedor, int scoreLeft, int scoreRigth, Function novoSet, BuildContext context) {
    if (scoreLeft >= 25 && (scoreLeft - scoreRigth) >= 2) {
      ModalScreen(vencedor: vencedor, newSet: novoSet,).mostrarDialogo(context);
      return true;
    } else if (scoreRigth >= 25 && (scoreRigth - scoreLeft) >= 2) {
      ModalScreen(vencedor: vencedor, newSet: novoSet,).mostrarDialogo(context);
      return true;
    }
    return false;
  }
}