import 'package:flutter/material.dart';
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
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0xffF77859),
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xffC2F2F8),
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: Color(0xff2B4A8E),
                          fontSize: 22, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ResultList(timeName: 'Ziraldos', victories: '25', invertOrder: false, winner: true,),
                  ResultList(timeName: 'Ziraldos', victories: '15', invertOrder: false, winner: false,),
                  ResultList(timeName: 'Ziraldos', victories: '22', invertOrder: false, winner: false,),
                  ResultList(timeName: 'Ziraldos', victories: '25', invertOrder: false, winner: true,),
                ],
              ),
            ),
            Container(
              height: 220,
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0xffF77859),
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xffC2F2F8),
                      child: Text(
                        'B',
                        style: TextStyle(
                          color: Color(0xff2B4A8E),
                          fontSize: 22, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ResultList(timeName: 'Felizes', victories: '10', invertOrder: true, winner: false,),
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
