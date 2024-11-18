import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                icon: const Icon(Icons.analytics_outlined, color: Colors.white, size: 25.0,), 
                onPressed: () {
                  
                },
              ),
            ),
          ],
        ),
        body: const Stack(
        children: [
          ResultsTable(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Victories(),
            ),
        ],
      ),

      )
    );
  }
}