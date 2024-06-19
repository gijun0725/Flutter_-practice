import 'package:flutter/material.dart';

class Customgrid extends StatelessWidget {
  const Customgrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> citys = [
      '서울시',
      '인천시',
      '부산시',
      '대구시',
      '대전시',
      '광주시',
      '울산시',
      '세종시'
    ];
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: citys.length,
        itemBuilder: (c, i) {
          return Card(
            child: Column(
              children: [Text(citys[i]), Image.asset('assets/big.jpeg')],
            ),
          );
        });
  }
}
