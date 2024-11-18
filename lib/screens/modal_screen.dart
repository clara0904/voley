import 'package:flutter/material.dart';
import 'package:voley_app/components/components_second/secondary_button.dart';
import 'package:voley_app/screens/third_screen.dart';

class ModalScreen extends StatelessWidget {
  final String vencedor;
  final Function newSet;

  const ModalScreen({super.key, required this.vencedor, required this.newSet});

  Future<void> mostrarDialogo(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(182, 191, 234, 239),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(
              color: Colors.white,
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
                const Text(
                  "FIM DE SET",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'ConcertOne',
                    color: Color(0xff2B4A8E),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      vencedor,
                      style: const TextStyle(
                        fontSize: 60,
                        fontFamily: 'ConcertOne',
                        color: Color(0xff2B4A8E),
                      ),
                    textAlign: TextAlign.center,
                    ),
                    const Align(
                      alignment: Alignment.bottomRight, 
                      child: Text(
                        "VENCEU",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'ConcertOne',
                          color: Color(0xff2B4A8E),
                        ),
                        textAlign: TextAlign.right, 
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
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
                      fontColor: Colors.white,
                    ),
                    SecondaryButton(
                      onPressed: () {
                        newSet();
                        Navigator.of(context).pop();
                      },
                      nameButton: 'Novo Set',
                      fontColor: Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => mostrarDialogo(context),
      child: const Text('Mostrar Modal'),
    );
  }
}
