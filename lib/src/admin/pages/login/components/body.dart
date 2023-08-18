import 'package:e_board/src/admin/constants/texts.dart';
import 'package:e_board/src/admin/pages/dashboard/home.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import '../../../constants/colors.dart';
import '../../reset_password/reset.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key, required this.size});
  final Size size;

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.size.height * .08,
        ),
        Image.asset(
          ApplicationAssets.loginImage,
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            karibu,
            style: TextStyle(
                color: ApplicationColors.eBoardBlue,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: ApplicationColors.eBoardBlue),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.email_outlined),
                hintText: hintEmail,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: ApplicationColors.eBoardBlue),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              onChanged: (value) {},
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.lock),
                hintText: hintPassword,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(
              width: double.infinity,
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(18),
                    backgroundColor: ApplicationColors.eBoardBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const dashboard(),
                  ));
                },
                child: const Text(signIn,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const ResetPasswordPage(),
              ));
            },
            child: const Text(
              forgotPassword,
              style: TextStyle(color: ApplicationColors.eBoardPartialBlue),
            ),
          ),
        )
      ],
    );
  }
}
