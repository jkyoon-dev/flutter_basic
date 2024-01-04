import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: body(),
    ),
  ));
}

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExampleStateless(),
        ExampleStateful(),
      ],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  // 모든 변수는 상태객체에 넣어줘야된다.
  // int index = 0;
  late int index;
  late TextEditingController textController;
  @override
  void initState() {
    // 부모까지 적용하려면
    super.initState();
    index = 5;
    textController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (index == 5) {
              index = 0;
              return;
            }
            index++;
            print(index);
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(index / 5),
          child: Center(
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}
