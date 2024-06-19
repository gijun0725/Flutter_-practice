import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextState extends StatefulWidget {
  const TextState({super.key});

  @override
  State<TextState> createState() => _TextStateState();
}

class _TextStateState extends State<TextState> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  void _printValue() {
    print(controller.text); // 텍스트 필드의 현재 값을 출력합니다.
  }

  @override
  void dispose() {
    controller.removeListener(_printValue); // 리스너를 제거합니다.
    controller.dispose(); // 컨트롤러를 해제합니다.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: const TextStyle(fontSize: 15),
          controller: controller,
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