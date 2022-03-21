import 'package:flutter/material.dart';

import '../common/app_theme.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppTheme.colors['blue'],
        minimumSize: const Size.fromHeight(48.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      child: const Text(
        'Login',
        style: TextStyle(fontFamily: 'SF Pro Display', fontSize: 17.0),
      ),
      onPressed: () {},
    );
  }
}
