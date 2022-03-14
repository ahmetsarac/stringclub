import 'package:flutter/material.dart';

import '../widgets/login_view/background_image.dart';
import '../widgets/login_view/different_email_button.dart';
import '../widgets/login_view/forgot_password_button.dart';
import '../widgets/login_view/login_view_app_bar.dart';
import '../widgets/login_view/login_view_text_field.dart';
import '../widgets/login_view/login_button.dart';
import '../widgets/login_view/user_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: const LoginViewAppBar(),
            body: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 55.0),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/pp.png'),
                  ),
                  SizedBox(height: 12.0),
                  UserText('Melissa Kelly'),
                  SizedBox(
                    height: 71.0,
                  ),
                  LoginViewTextField(),
                  SizedBox(height: 16.0),
                  LoginButton(),
                  ForgotPasswordButton(),
                  SizedBox(
                    height: 100.0,
                  ),
                  DifferentEmailButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
