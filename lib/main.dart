import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ConstraintsWidget(),
      ),
    );
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      // Align => 많이씀, SingleChildScrollView => overflow
      child: SingleChildScrollView(
        child: Container(
          color: Colors.red,
          height: 300000,
          width: 300,
          child: Container(
            // 제약조건으로 position relative 느낌
            constraints: BoxConstraints.tight(
              Size(200, 200),
            ),
            margin: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
