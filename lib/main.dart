import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Study to Container'),
        ),
        body: CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Container(
          width: double.infinity,
          height: 100,
          // color: Color.fromARGB(255, 41, 192, 195),
          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),

          /// BoxDecoration 선언했을경우 파라미터 안에 컬러로 이동
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 41, 192, 195),
            border: Border.all(
                color: Colors.red, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(6, 12),
                blurRadius: 10,
                spreadRadius: 10,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(-6, -12),
                blurRadius: 10,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Text('Hello Container'),
        ),
      ),
    );
  }
}
