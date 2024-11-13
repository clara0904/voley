import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voley_app/components/court.dart';
import 'package:voley_app/components/secondary_button.dart';
import 'package:voley_app/components/side_column.dart';
import 'package:voley_app/components/times_secondary.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff00ADC3),
        appBar: AppBar(
          backgroundColor: const Color(0xff00ADC3), 
          elevation: 0, 
          toolbarHeight: 40,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white), 
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.settings, color: Colors.white), 
                onPressed: () {
                  
                },
              ),
            ),
          ],
        ),
        body: const Row(
          children: [
            Flexible(
              flex: 1,
              child: SideColumn(isLeft: true),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TimesSecondary(aOrB: 'A', timeName: 'Ziraldos'),
                      TimesSecondary(aOrB: 'B', timeName: 'Autoconvidados'),
                    ],
                  ),
                  Court(),
                  SizedBox(height: 10),
                  Text(
                    'Tempo de jogo: 1:14´00´´',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                  SizedBox(height: 10),
                  SecondaryButton(),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SideColumn(isLeft: false),
            ),
          ],
        ),
      ),
    );
  }
}
