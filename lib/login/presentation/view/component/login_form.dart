import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/login/login.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: EmailTextField(_emailController),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: PasswordTextField(_passwordController),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: LoginButton(_emailController, _passwordController),
        ),
      ],
    );
  }
}
