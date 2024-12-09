import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voley_app/components/components_primary/custom_button.dart';
import 'package:voley_app/components/components_primary/header.dart';
import 'package:voley_app/components/components_primary/times_list.dart';
import 'package:voley_app/screens/second_screen.dart';
import 'package:voley_app/theme/colors.dart';


class PrimaryScreen extends StatelessWidget {
  const PrimaryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Header(),

            const TimesList(),

            CustomButton( 
              nameButton: 'Jogo Casado', 
              corBackground: ColorsApp.backgroundPrincipal, 
              tamText: 30, 
              onPressed: (){},
            ),

            CustomButton( 
              nameButton: 'Iniciar', 
              corBackground: ColorsApp.fonteSecundaria, 
              tamText: 40, 
              comBorder: true,
              onPressed: () { 
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SecondScreen())
                );
              }
            ),
          ],
        ),
        
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () {
            // Ação ao clicar
          },
          backgroundColor: ColorsApp.fonteSecundaria,
          shape: const CircleBorder(),
          child: Icon(
            Icons.add,
            size: 24,
            color: ColorsApp.fontePrimaria
          )
        ),
      ),
    );
  }
}

