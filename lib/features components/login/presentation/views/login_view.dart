import 'package:flutter/material.dart';
import 'package:whats_app/core/utils/app_styles.dart';
import 'package:whats_app/features%20components/login/presentation/views/widgets/custom_login_view_appbar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customLoginViewAppBar(),
    );
  }
}
