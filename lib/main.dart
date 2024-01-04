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
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey,

      /// Column 위아래로 쌓을때
      child: Column(
        // 메인사이즈 지정 default max
        mainAxisSize: MainAxisSize.min,
        // 메인축
        mainAxisAlignment: MainAxisAlignment.center,
        // 반대축
        crossAxisAlignment: CrossAxisAlignment.start,

        /// children 복수형으로 사용
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 80,
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 80,
            child: Text('Container 2'),
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 80,
            child: Text('Container 3'),
          ),
        ],
      ),
    );
  }
}
