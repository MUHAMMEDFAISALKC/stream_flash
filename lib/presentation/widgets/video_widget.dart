import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.urlImage});

  final String urlImage;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          width: screenSize.width - 40,
          height: 200,
          //color: Colors.blueAccent,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(urlImage))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            child: Icon(Icons.volume_off),
          ),
        )
      ],
    );
  }
}
