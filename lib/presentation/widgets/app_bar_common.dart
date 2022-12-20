import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarCommon extends StatelessWidget {
  const AppBarCommon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.white,
      title: Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(
              'assets/images/StreamFlash.png',
              //width: 35,
              height: 40,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('Stream flash'.toUpperCase()),
            ),
          ])),
      backgroundColor: Colors.black,
    );
  }
}
