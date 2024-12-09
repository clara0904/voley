import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voley_app/components/game_time.dart';
import 'package:voley_app/components/components_third/accessories.dart';
import 'package:voley_app/components/components_third/results_table.dart';
import 'package:voley_app/components/components_third/victories.dart';
import 'package:voley_app/theme/colors.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0, 
          toolbarHeight: 40,
          centerTitle: true,
          title: Text(
              'PLACAR GERAL',
              style: TextStyle(
                color:  ColorsApp.fonteSecundaria,
                fontSize: 40,
              ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: ColorsApp.fontePrimaria, size: 25.0,), 
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.show_chart_sharp, color: ColorsApp.fontePrimaria, size: 25.0,), 
                onPressed: () {
                  
                },
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Accessories(
                      accessorio: Icon(Icons.bar_chart_sharp),
                    ),
                  ),

                  Flexible(
                    flex: 3,
                    child: ResultsTable(),
                  ),

                  Flexible(
                    flex: 1,
                    child: Accessories(
                      accessorio: GameTime(visible: false, minutosJogo: "0:38'", segundosJogo: "24''",)
                    ),
                  ),
                ],
              ),
            ),

            SizedBox( 
              child: Victories(),
            ),
          ],
        ),
      )
    );
  }
}