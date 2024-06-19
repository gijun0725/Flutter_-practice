import 'package:flutter/material.dart';
class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100,
                    height: 200,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 100,
                    height: 200,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 100,
                    height: 200,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            color: Colors.lightGreen,
            child: Row(
              children: <Widget>[
                Image.asset('assets/lab_instagram_icon_1.jpg'),
                Image.asset('assets/lab_instagram_icon_2.jpg'),
                Image.asset('assets/lab_instagram_icon_3.jpg'),
                Spacer(),
                Image.asset('assets/lab_instagram_icon_4.jpg')
              ],
            ),
          ),
          Container(
            height: 200,
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}

