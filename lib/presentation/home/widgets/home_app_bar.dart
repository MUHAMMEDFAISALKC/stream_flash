import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/StreamFlash.png',
            //width: 35,
            height: 40,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text(
              title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900
                  //fontFamily: GoogleFonts.monoton().fontFamily
                  ),
            ),
          )),
          Icon(
            Icons.cast,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
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
