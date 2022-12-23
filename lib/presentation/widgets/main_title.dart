import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.sTitle});

  final String sTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          sTitle,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
