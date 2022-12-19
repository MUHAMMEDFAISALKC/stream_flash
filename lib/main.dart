import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/presentation/downloads/screen_downloads.dart';
import 'package:stream_flash/presentation/fast_laughs/screen_fastlaughs.dart';
import 'package:stream_flash/presentation/main_page/screen_main_page.dart';
import 'package:stream_flash/presentation/main_page/widgets/bottom_nav.dart';
import 'package:stream_flash/presentation/new_and_hot/screen_newandhot.dart';
import 'package:stream_flash/presentation/search/screen_search.dart';
import 'package:stream_flash/streamflashbloc/streamflash_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StreamflashBloc(),
      child: MaterialApp(
        title: 'Stream Flash',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            //backgroundColor: backgroundcolor,
            scaffoldBackgroundColor: backgroundcolor,
            textTheme: const TextTheme(
                bodyText1: TextStyle(color: textcolor),
                bodyText2: TextStyle(color: textcolor))),
        home: ScreenMainPage(),
      ),
    );
  }
}
