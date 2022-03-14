import 'package:flutter/material.dart';

class DifferentEmailButton extends StatelessWidget {
  const DifferentEmailButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Text(
        'It\'s not you? Log in with different e-mail',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        ),
      ),
      onPressed: () {},
    );
  }
}
