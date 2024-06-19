import 'package:flutter/material.dart';

class Customscroll extends StatelessWidget {
  const Customscroll({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);
    return PageView(
      controller: controller,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.red,
          child: Center(
            child: Text(
              'onepage',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.green,
          child: Center(
            child: Text(
              'TwoPage',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
