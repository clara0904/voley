import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voley_app/components/court.dart';
import 'package:voley_app/components/game_time.dart';
import 'package:voley_app/components/secondary_button.dart';
import 'package:voley_app/components/side_column.dart';
import 'package:voley_app/components/times_secondary.dart';
import 'package:voley_app/screens/modal_screen.dart';
import 'package:voley_app/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  bool _visibleLeft = false;
  bool _visibleRight = false;
  int _scoreLeft = 0;
  int _scoreRigth = 0;
  final String timeA = 'Ziraldos';
  final String timeB = 'Autoconvidados';

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

  void novoSet() {
    setState(() {
      _scoreLeft = 0;
      _scoreRigth = 0;
      _visibleLeft = false;
      _visibleRight = false;
    });
  }

  bool verificaVitoria(String vencedor) {
    if (_scoreLeft >= 25 && (_scoreLeft - _scoreRigth) >= 2) {
      ModalScreen(vencedor: vencedor, newSet: novoSet,).mostrarDialogo(context);
      return true;
    } else if (_scoreRigth >= 25 && (_scoreRigth - _scoreLeft) >= 2) {
      ModalScreen(vencedor: vencedor, newSet: novoSet,).mostrarDialogo(context);
      return true;
    }
    return false;
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
        body: Row(
          children: [
            Flexible(
              flex: 1,
              child: SideColumn(isLeft: true, onPressed: () {
                setState(() {
                  _scoreLeft++;
                  _visibleRight = false;
                  _visibleLeft = true;
                  verificaVitoria(timeA);
                });
              }),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TimesSecondary(aOrB: 'A', timeName: timeA),
                      TimesSecondary(aOrB: 'B', timeName: timeB),
                    ],
                  ),
                  Court(
                    visibilidadeDireita: _visibleRight,
                    visibilidadeEsquerda: _visibleLeft,
                    scoreLeft: _scoreLeft.toString(),
                    scoreRight: _scoreRigth.toString(),
                  ),
                  const SizedBox(height: 10),
                  const GameTime(),
                  const SizedBox(height: 10),
                  SecondaryButton(
                    fontColor: Colors.white,
                    nameButton: 'Placar Geral',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const ThirdScreen())
                      );
                    },
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SideColumn(isLeft: false, 
                onPressed: () {
                  setState(() {
                    _scoreRigth++;
                    _visibleLeft = false;
                    _visibleRight = true;
                    verificaVitoria(timeB);
                  });
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
