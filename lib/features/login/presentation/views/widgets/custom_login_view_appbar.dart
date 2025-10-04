import 'package:flutter/material.dart';
import 'package:whats_app/core/utils/app_styles.dart';

AppBar customLoginViewAppBar() {
  return AppBar(
    title: const Text(
      'Enter your Phone Number',
      style: AppStyles.style25Bol,
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
        ),
      )
    ],
  );
}
