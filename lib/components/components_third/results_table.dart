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
                    child: Times(aOrB: 'A', timeName: '', visible: false)
                  ),
                  ResultList(timeName: 'Felizes', victories: '25', invertOrder: false, winner: true,),
                  ResultList(timeName: 'Atrasados', victories: '15', invertOrder: false, winner: false,),
                  ResultList(timeName: 'Penetras', victories: '22', invertOrder: false, winner: false,),
                  ResultList(timeName: 'Esquecidos', victories: '25', invertOrder: false, winner: true,),
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
                    child: Times(aOrB: 'B', timeName: '', visible: false)
                  ),
                  ResultList(timeName: 'Esquecidos', victories: '10', invertOrder: true, winner: false,),
                  ResultList(timeName: 'Penetras', victories: '25', invertOrder: true, winner: true,),
                  ResultList(timeName: 'Felizes', victories: '25', invertOrder: true, winner: true,),
                  ResultList(timeName: 'Atrasados', victories: '20', invertOrder: true, winner: false,),
                ],
              ),
            ),
          ],
    );
  }
}
