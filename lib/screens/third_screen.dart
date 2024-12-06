import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voley_app/components/components_second/game_time.dart';
import 'package:voley_app/components/components_third/accessories.dart';
import 'package:voley_app/components/components_third/results_table.dart';
import 'package:voley_app/components/components_third/victories.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff00ADC3),
        appBar: AppBar(
          backgroundColor: const Color(0xff00ADC3), 
          elevation: 0, 
          toolbarHeight: 40,
          centerTitle: true,
          title: const Text(
              'PLACAR GERAL',
              style: TextStyle(
                color:  Color(0xff2B4A8E),
                fontSize: 40,
              ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 25.0,), 
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.show_chart_sharp, color: Colors.white, size: 25.0,), 
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
                      accessorie: Icon(Icons.bar_chart_sharp),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: ResultsTable(),
                  ),
                  Flexible(
                    flex: 1,
                    child: Accessories(
                      accessorie: GameTime(visible: false,)
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