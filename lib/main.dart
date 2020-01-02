import 'package:flutter/material.dart';

void main() => runApp(Myapp());

addNumbers(num1, num2) {
  print(num1 + num2);
}

class Myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("this is title"),
          backgroundColor: Color.fromRGBO(222, 0, 70, 1),
        ),
        body: Text("this is body"),
      ),
    );
  }
}
