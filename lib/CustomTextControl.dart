import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextState extends StatefulWidget {
  const TextState({super.key});

  @override
  State<TextState> createState() => _TextStateState();
}

class _TextStateState extends State<TextState> {
  final controller = TextEditingController();
  int textLength = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  void _printValue() {
    setState(() {
      textLength = controller.text.length;
    });
    print(controller.text); // 텍스트 필드의 현재 값을 출력합니다.
  }

  @override
  void dispose() {
    controller.removeListener(_printValue); // 리스너를 제거합니다.
    controller.dispose(); // 컨트롤러를 해제합니다.
    super.dispose();
  }

  void _onChanged(String value){
    if (value.length > 12){
      setState(() {
        controller.text = value.substring(0,12);
        controller.selection = TextSelection.fromPosition(TextPosition(offset: controller.text.length),);
      });
    }
    else{
      setState(() {
        textLength = value.length;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: TextField(
            textInputAction: TextInputAction.search,
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 20),
            controller: controller,
            onChanged: _onChanged,
            decoration: InputDecoration(
              labelText: 'ID',
              labelStyle: const TextStyle(fontSize: 20),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: textLength > 11 ? Colors.red : Colors.blue
                )
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color :textLength > 11 ? Colors.red : Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color : textLength > 11 ? Colors.red :Colors.blue,)
              ),
              helperText: "12자 이하의 이름을 입력하세요",
              counterText: "$textLength character"
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print(controller.text);
            },
            child: const Text('프린트'))
      ],
    );
  }
}