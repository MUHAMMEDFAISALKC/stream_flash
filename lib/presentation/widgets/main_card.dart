import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 100,
      height: 140,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/spiderman.jpg'))),
      //color: Colors.accents[index % Colors.accents.length]
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: NetworkImage(
      //             'https://www.themoviedb.org/t/p/w440_and_h660_face/4x3pt6hoLblBeHebUa4OyiVXFiM.jpg'))),
    );
  }
}
