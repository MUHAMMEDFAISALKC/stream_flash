import 'package:flutter/material.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: AppBarCommon()),
        body: SafeArea(
          child: Center(
              child: Text(
            'Screen of Search',
            style: TextStyle(fontSize: 30),
          )),
        ));
  }
}
