import 'package:bookly/Constance.dart';
import 'package:bookly/Core/utils/appRouters.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void
    main() async {
  await Hive
      .initFlutter();
  Hive.registerAdapter(
      BookEntiteAdapter());
  await Hive.openBox(
      KFeaturedbox);
  await Hive.openBox(
      KNewsbox);
  runApp(
      const Bookly());
}

class KFeaturedlybox {}

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
