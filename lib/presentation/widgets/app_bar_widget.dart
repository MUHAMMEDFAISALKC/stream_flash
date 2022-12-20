import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900
                //fontFamily: GoogleFonts.monoton().fontFamily
                ),
          )),
          Icon(
            Icons.cast,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset(
              'assets/images/whowatch.jpg',
              height: 25,
            ),
          )
        ],
      ),
    );
  }
}
