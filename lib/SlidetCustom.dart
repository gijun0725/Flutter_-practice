import 'package:flutter/material.dart';

class CustomSlide extends StatefulWidget {
  const CustomSlide({super.key});

  @override
  State<CustomSlide> createState() => _CustomSlideState();
}

class _CustomSlideState extends State<CustomSlide> {
  double selectValue = 5.0;
  bool? isChecked = true;
  String? selectPlatform;
  bool switchValue = false;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('슬라이드 테스트'),
            Slider(value: selectValue, onChanged: (double value){
              setState(() {
                selectValue = value;
              });
            },
            min: 0,max: 15,)
          ],
        ),
        Row(
          children: [
            const Text('체크박스 테스트'),
            Radio(value: "android", groupValue: selectPlatform, onChanged: (String?value){
              setState(() {
                selectPlatform = value;
              });
            })
          ],
        ),
        Row(
          children: [
            const Text('체크박스 테스트'),
            Radio(value: "ios", groupValue: selectPlatform, onChanged: (String?value){
              setState(() {
                selectPlatform = value;
              });
            })
          ],
        ),
        Row(
          children: [
            const Text('체크박스 테스트'),
            Switch(value: switchValue, onChanged: (bool value){
              setState(() {
                switchValue = value;
              });
            })
          ],
        )
      ],
    );
  }
}
