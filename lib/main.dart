import 'package:bookly/Constance.dart';
import 'package:bookly/Core/utils/BlocObserver.dart';
import 'package:bookly/Core/utils/appRouters.dart';
import 'package:bookly/Core/utils/functions/setupServicesLocator.dart';

import 'package:bookly/Features/Home/data/repos/HomeReposImpl.dart';
import 'package:bookly/Features/Home/domain/entites/bookEntite.dart';
import 'package:bookly/Features/Home/domain/useCases/featchFeaturedBookUseCase.dart';
import 'package:bookly/Features/Home/domain/useCases/featchNewsBookUseCase.dart';
import 'package:bookly/Features/Home/presentation/manager/FeaturedBookCubite/cubit/featured_book_cubit.dart';
import 'package:bookly/Features/Home/presentation/manager/NewsBooksCubite/cubit/news_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntiteAdapter());
  await Hive.openBox<BookEntite>(KFeaturedbox);
  setupServicesLocator();
  await Hive.openBox<BookEntite>(KNewsbox);
  Bloc.observer = MyBlocObserver();

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(
            FeatchFeaturedBooUseCase(
              homeRepo: getIt.get<HomeRepoImpl>(),
            ),
          )..featchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsBooksCubit(
            FeatchNewsBooksUseCase(
              homeRepo: getIt.get<HomeRepoImpl>(),
            ),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimayColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
        // home: const SplashView(),
      ),
    );
  }
}
