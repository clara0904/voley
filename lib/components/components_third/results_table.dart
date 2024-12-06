import 'package:flutter/material.dart';
import 'package:voley_app/components/times.dart';
import 'package:voley_app/components/components_third/result_list.dart';

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
                color: const Color(0xffF77859),
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: TimesSecondary(aOrB: 'A', timeName: '', visible: false)
                  ),
                  ResultList(timeName: 'Felizes', victories: '25', invertOrder: false, winner: true,),
                  ResultList(timeName: 'Autoconvidados', victories: '15', invertOrder: false, winner: false,),
                  ResultList(timeName: 'Ziraldos', victories: '22', invertOrder: false, winner: false,),
                  ResultList(timeName: 'Ziraldos', victories: '25', invertOrder: false, winner: true,),
                ],
              ),
            ),
            Container(
              height: 220,
              width: 210,
              decoration: BoxDecoration(
                color: const Color(0xffF77859),
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: TimesSecondary(aOrB: 'B', timeName: '', visible: false)
                  ),
                  ResultList(timeName: 'Autoconvidados', victories: '10', invertOrder: true, winner: false,),
                  ResultList(timeName: 'Felizes', victories: '25', invertOrder: true, winner: true,),
                  ResultList(timeName: 'Felizes', victories: '25', invertOrder: true, winner: true,),
                  ResultList(timeName: 'Felizes', victories: '20', invertOrder: true, winner: false,),
                ],
              ),
            ),
          ],
    );
  }
}
