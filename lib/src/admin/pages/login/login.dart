import 'package:e_board/src/admin/constants/colors.dart';
import 'package:e_board/src/admin/pages/login/components/body.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ApplicationColors.eBoardBackground,
      body: Container(
        margin: const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
        child: SingleChildScrollView(
          child: LoginBody(
            size: size,
          ),
        ),
      ),
    );
  }
}
