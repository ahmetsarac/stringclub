import 'package:flutter/material.dart';

class UserText extends StatelessWidget {
  final String username;
  const UserText(
    this.username, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      username,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600),
    );
  }
}
