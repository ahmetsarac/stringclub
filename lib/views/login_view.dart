import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.png',
                ),
                opacity: 0.4,
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
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
                              color: Colors.white,
                              fontFamily: 'SF Pro Display')),
                      onPressed: () {}),
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 55.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/pp.png'),
                  ),
                  const SizedBox(height: 12.0),
                  const Text(
                    'Melissa Kelly',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 71.0,
                  ),
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 16.0, 10.0, 16.0),
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
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF4076E5),
                      minimumSize: const Size.fromHeight(48.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display', fontSize: 17.0),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(top: 16.0),
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Forgot your password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  TextButton(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
