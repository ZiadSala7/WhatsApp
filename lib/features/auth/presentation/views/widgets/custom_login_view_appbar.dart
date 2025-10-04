import 'package:flutter/material.dart';
import 'package:whats_app/core/utils/app_colors.dart';
import 'package:whats_app/core/utils/app_styles.dart';

AppBar customLoginViewAppBar() {
  return AppBar(
    flexibleSpace: Container(
      color: Colors.white,
    ),
    title: Text(
      'Verify your Phone Number',
      style: AppStyles.style25Bol.copyWith(color: AppColors.common),
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
