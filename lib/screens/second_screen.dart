import 'package:flutter/material.dart';
import 'package:voley_app/components/components_second/court.dart';
import 'package:voley_app/components/components_second/orientation.dart';
import 'package:voley_app/components/game_time.dart';
import 'package:voley_app/components/components_second/secondary_button.dart';
import 'package:voley_app/components/components_second/side_column.dart';
import 'package:voley_app/components/times.dart';
import 'package:voley_app/models/check_victory.dart';
import 'package:voley_app/screens/third_screen.dart';
import 'package:voley_app/theme/colors.dart';

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
  final String timeA = 'Felizes';
  final String timeB = 'Esquecidos';

  @override
  void initState() {
    super.initState();
  }


  void novoSet() {
    setState(() {
      _scoreLeft = 0;
      _scoreRigth = 0;
      _visibleLeft = false;
      _visibleRight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    setLandscapeOrientation();
    return PopScope(
      onPopInvokedWithResult: (popDisposition, result) async {
        resetToPortraitOrientation();
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0, 
            toolbarHeight: 40,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: ColorsApp.fontePrimaria, size: 25.0), 
               onPressed: () {
                resetToPortraitOrientation(); 
                Navigator.pop(context);
            },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: Icon(Icons.settings, color: ColorsApp.fontePrimaria, size: 25.0), 
                  onPressed: () {},
                ),
              ),
            ],
          ),
          body: Row(
            children: [
              Flexible(
                flex: 1,
                child: SideColumn(
                  eEsquerda: true, 
                  onPressed: () {
                    setState(() {
                      _scoreLeft++;
                      _visibleRight = false;
                      _visibleLeft = true;
                      CheckVictory().verificaVitoria(timeA, _scoreLeft, _scoreRigth, novoSet, context);
                    });
                }),
              ),
              
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Times(timeAB: 'A', nomeTime: timeA, visible: true,),
                        ),
                        Expanded(
                          flex: 1,
                          child: Times(timeAB: 'B', nomeTime: timeB, visible: true,),
                        ),
                      ],
                    ),
      
                    Court(
                      visibilidadeDireita: _visibleRight,
                      visibilidadeEsquerda: _visibleLeft,
                      pontosEsquerda: _scoreLeft.toString(),
                      pontosDireita: _scoreRigth.toString(),
                    ),
      
                    const SizedBox(height: 10),
      
                    const GameTime(visible: true, minutosJogo: "1:30'", segundosJogo: "00''",),
      
                    const SizedBox(height: 10),
      
                    SecondaryButton(
                      corFonte: ColorsApp.fontePrimaria,
                      nomeBotao: 'Placar Geral',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const ThirdScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
      
              Flexible(
                flex: 1,
                child: SideColumn(
                  eEsquerda: false, 
                  onPressed: () {
                    setState(() {
                      _scoreRigth++;
                      _visibleLeft = false;
                      _visibleRight = true;
                      CheckVictory().verificaVitoria(timeB, _scoreLeft, _scoreRigth, novoSet, context);
                    });
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}