import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.icon, required this.title});

  final Widget icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(title),
      ],
    );
  }
}
