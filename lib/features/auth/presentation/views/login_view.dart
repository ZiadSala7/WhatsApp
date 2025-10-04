import 'package:flutter/material.dart';
import 'widgets/custom_login_view_appbar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customLoginViewAppBar(),
    );
  }
}
