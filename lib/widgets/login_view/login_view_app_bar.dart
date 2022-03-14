import 'package:flutter/material.dart';

class LoginViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginViewAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Image.asset('assets/images/back_icon.png'),
      actions: [
        Container(
          margin: const EdgeInsets.only(bottom: 5.0),
          child: TextButton(
              child: const Text('Sign Up',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'SF Pro Display')),
              onPressed: () {}),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
