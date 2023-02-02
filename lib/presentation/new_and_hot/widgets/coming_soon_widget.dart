import 'package:flutter/material.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/home/widgets/custom_button.dart';

class CommingSoonWidget extends StatelessWidget {
  CommingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Container(
          width: 40,
          height: 460,
          //color: Colors.grey.withOpacity(0.2),
          child: Column(
            children: [
              heightBox20,
              Text('Feb'),
              Text(
                '11',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          width: screenSize.width - 80,
          height: 460,
          //color: Colors.grey.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox,
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: screenSize.width - 130,
                      height: 200,
                      //color: Colors.blueAccent,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/tallboy.jpg'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: Icon(Icons.volume_off),
                      ),
                    )
                  ],
                ),
                heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TALLBOY2',
                      style: TextStyle(
                          letterSpacing: -2,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        CustomButton(
                            icon: Icon(Icons.notifications),
                            title: 'Remind Me'),
                        widthBox,
                        CustomButton(
                            icon: Icon(Icons.info_outlined), title: 'Info'),
                        widthBox30,
                      ],
                    ),
                  ],
                ),
                heightBox,
                Text(
                  'Comming on Friday',
                  style: TextStyle(fontSize: 17),
                ),
                heightBox,
                Text(
                  'Tall Boy 2',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                heightBox,
                Text(
                  'Landing the lead in the School musical is a dream come true for Arun, until the pressure sends his confidence - and his relationship - into a tailspin',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
