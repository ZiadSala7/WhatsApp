import 'package:flutter/material.dart';
import 'package:whats_app/components/on_accept/presentation/views/widgets/on_accept_page_body.dart';

class OnAcceptPage extends StatelessWidget {
  const OnAcceptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff111B21),
      body: OnAcceptPageBody(),
    );
  }
}
