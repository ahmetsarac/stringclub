import 'package:flutter/material.dart';

class LoginViewTextField extends StatelessWidget {
  const LoginViewTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(20.0, 16.0, 10.0, 16.0),
        fillColor: Colors.white,
        filled: true,
        hintStyle: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
