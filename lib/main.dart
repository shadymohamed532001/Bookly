import 'package:bookly/Constance.dart';
import 'package:bookly/Core/utils/appRouters.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void
    main() async {
  Hive.registerAdapter(
      BookEntiteAdapter());
  await Hive.openBox(
      KBooklybox);
  runApp(
      const Bookly());
}

class Bookly
    extends StatelessWidget {
  const Bookly(
      {super.key});

  // This widget is the root of your application.
  @override
  Widget
      build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimayColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: const SplashView(),
    );
  }
}
