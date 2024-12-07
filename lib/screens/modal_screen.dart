import 'package:flutter/material.dart';
import 'package:voley_app/components/components_second/secondary_button.dart';
import 'package:voley_app/screens/third_screen.dart';
import 'package:voley_app/theme/colors.dart';

class ModalScreen extends StatelessWidget {
  final String vencedor;
  final Function newSet;

  const ModalScreen({super.key, required this.vencedor, required this.newSet});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => mostrarDialogo(context),
      child: const Text('Mostrar Modal'),
    );
  }

  Future<void> mostrarDialogo(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorsApp.transparente,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: ColorsApp.fontePrimaria,
              width: 2,
            ),
          ),
          content: Container(
            width: 420, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    "FIM DE SET",
                    style: TextStyle(
                      fontSize: 40,
                      color: ColorsApp.fonteSecundaria,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        vencedor,
                        style: TextStyle(
                          fontSize: 68,
                          color: ColorsApp.fonteSecundaria,
                        ),
                      textAlign: TextAlign.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight, 
                        child: Text(
                          "VENCEU",
                          style: TextStyle(
                            fontSize: 34,
                            color: ColorsApp.fonteSecundaria,
                          ), 
                        ),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  
                      SecondaryButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ThirdScreen())
                          );
                        },
                        nameButton: 'Terminar',
                        fontColor: ColorsApp.fontePrimaria,
                      ),
                  
                      SecondaryButton(
                        onPressed: () {
                          newSet();
                          Navigator.of(context).pop();
                        },
                        nameButton: 'Novo Set',
                        fontColor: ColorsApp.fonteTerciaria,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
