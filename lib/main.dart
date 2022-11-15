import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:musixmatch/domain/models/details/details_repository.dart';
import 'package:musixmatch/domain/models/home/home_repository.dart';
import 'package:musixmatch/domain/models/lyrics/lyrics_repository.dart';
import 'package:musixmatch/views/home/home_screen.dart';

import 'constants/constants.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<HomeRepository>(
          create: (context) => HomeRepository(),
        ),
        RepositoryProvider<DetailsRepository>(
          create: (context) => DetailsRepository(),
        ),
        RepositoryProvider<LyricsRepository>(
          create: (context) => LyricsRepository(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: kBackgroundColor),
          backgroundColor: kBackgroundColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: kFontColor,
            ),
            bodyText2: TextStyle(
              color: kFontColor,
            ),
          ),
        ),
      ),
    );
  }
}
