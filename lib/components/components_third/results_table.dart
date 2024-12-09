import 'package:flutter/material.dart';
import 'package:voley_app/components/times.dart';
import 'package:voley_app/components/components_third/result_list.dart';
import 'package:voley_app/theme/colors.dart';

class ResultsTable extends StatelessWidget {
  const ResultsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Container(
              height: 220,
              width: 210,
              decoration: BoxDecoration(
                color: ColorsApp.quadras,
                border: Border.all(color: ColorsApp.fontePrimaria, width: 3),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Times(timeAB: 'A', nomeTime: '', visible: false)
                  ),
                  ResultList(nomeTime: 'Felizes', pontuacao: '25', inverteOrdem: false, vencedor: true,),
                  ResultList(nomeTime: 'Atrasados', pontuacao: '15', inverteOrdem: false, vencedor: false,),
                  ResultList(nomeTime: 'Penetras', pontuacao: '22', inverteOrdem: false, vencedor: false,),
                  ResultList(nomeTime: 'Esquecidos', pontuacao: '25', inverteOrdem: false, vencedor: true,),
                ],
              ),
            ),
            Container(
              height: 220,
              width: 210,
              decoration: BoxDecoration(
                color: ColorsApp.quadras,
                border: Border.all(color: ColorsApp.fontePrimaria, width: 3),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Times(timeAB: 'B', nomeTime: '', visible: false)
                  ),
                  ResultList(nomeTime: 'Esquecidos', pontuacao: '10', inverteOrdem: true, vencedor: false,),
                  ResultList(nomeTime: 'Penetras', pontuacao: '25', inverteOrdem: true, vencedor: true,),
                  ResultList(nomeTime: 'Felizes', pontuacao: '25', inverteOrdem: true, vencedor: true,),
                  ResultList(nomeTime: 'Atrasados', pontuacao: '20', inverteOrdem: true, vencedor: false,),
                ],
              ),
            ),
          ],
    );
  }
}
