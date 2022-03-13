import 'package:flutter/material.dart';

void main() => runApp(const StringClub());

class StringClub extends StatelessWidget {
  const StringClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'StringClub',
      home: Scaffold(
        body: Center(
          child: Text('StringClub'),
        ),
      ),
    );
  }
}
