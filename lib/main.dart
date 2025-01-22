import 'package:flutter/material.dart';

void main() {
  runApp(const EasyRest());
}

class EasyRest extends StatelessWidget {
  const EasyRest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
