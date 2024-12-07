import 'package:flutter/material.dart';
import 'package:voley_app/screens/modal_screen.dart';

class Vitoria {
  bool verificaVitoria(String vencedor, int scoreLeft, int scoreRigth, Function novoSet, BuildContext context) {
    if (scoreLeft >= 2 && (scoreLeft - scoreRigth) >= 2) {
      ModalScreen(vencedor: vencedor, newSet: novoSet,).mostrarDialogo(context);
      return true;
    } else if (scoreRigth >= 2 && (scoreRigth - scoreLeft) >= 2) {
      ModalScreen(vencedor: vencedor, newSet: novoSet,).mostrarDialogo(context);
      return true;
    }
    return false;
  }
}