import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TestCheckBox(),
      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  // 체크박스의 체크 됐는지 안됐는지 알기 위한 벨류값 설정, 왜 리스트로 했냐? 체크박스가 여러개 체크박스마다 함수를 하나하나 만들면 낭비
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // value는 true인지 false인지, onChanged는 콜백함수로 일괄 처리를 위해 외부 처리
        // Checkbox(value: values[0], onChanged:(value) => value ?? false,), -> 벨류값이 정해져 있어서 불필요
        Checkbox(
          value: values[0],
          onChanged: (value) => changeValue(0, value: value),
        ),
        Checkbox(
          value: values[1],
          onChanged: (value) => changeValue(1, value: value),
        ),
        Checkbox(
          value: values[2],
          onChanged: (value) => changeValue(2, value: value),
        ),
      ],
    );
  }

  // 콜백함수 공용사용으로 몇번째 버튼이 눌렸는지 인텍스가 파라미터로 들어가야됨, 어떤 값으로 변했는지 알아야 되니까 마찬가지 파라미터 추가
  void changeValue(int index, {bool? value = false}) {
    setState(() {
      // 몇번째 버튼인지 value값을 넣어줌
      values[index] = value!;
    });
  }
}
