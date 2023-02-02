import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_flash/application/downloads/download_bloc.dart';
import 'package:stream_flash/application/search/search_bloc.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/domain/core/di/injectable.dart';
import 'package:stream_flash/presentation/downloads/screen_downloads.dart';
import 'package:stream_flash/presentation/fast_laughs/screen_fastlaughs.dart';
import 'package:stream_flash/presentation/main_page/screen_main_page.dart';
import 'package:stream_flash/presentation/main_page/widgets/bottom_nav.dart';
import 'package:stream_flash/presentation/new_and_hot/screen_newandhot.dart';
import 'package:stream_flash/presentation/search/screen_search.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
      ],
      child: MaterialApp(
        title: 'Stream Flash',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            //backgroundColor: backgroundcolor,
            scaffoldBackgroundColor: backgroundcolor,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            iconTheme: IconThemeData(color: iconcolor),
            textTheme: const TextTheme(
                bodyText1: TextStyle(color: textcolor),
                bodyText2: TextStyle(color: textcolor))),
        home: ScreenMainPage(),
      ),
    );
  }
}
