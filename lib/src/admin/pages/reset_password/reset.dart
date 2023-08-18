import 'package:e_board/src/admin/pages/reset_password/components/resetBody.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ApplicationColors.eBoardBackground,
      body: SingleChildScrollView(
        child: ResetPasswordBody(size: size),
      ),
    );
  }
}
