import 'package:animal_app/core/networking/base_api.dart';
import 'package:animal_app/core/utils/app_theme.dart';
import 'package:animal_app/core/utils/bloc_observer.dart';
import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/features/details_screen/data/cubit/get_animal_cubit.dart';
import 'package:animal_app/features/details_screen/data/repo/details_repo_imple.dart';
import 'package:animal_app/features/details_screen/presentation/screen/animal_details_screen.dart';
import 'package:animal_app/features/favourite_screen/data/cubit/get_favourite_cubit.dart';
import 'package:animal_app/features/favourite_screen/data/repo/favourite_repo_imple.dart';
import 'package:animal_app/features/home/data/cubit/send_favourite_cubit.dart';
import 'package:animal_app/features/favourite_screen/presentation/screens/favourite_screen.dart';
import 'package:animal_app/features/home/data/cubit/animal_cubit_cubit.dart';
import 'package:animal_app/features/home/data/repo/home_repo_imple.dart';
import 'package:animal_app/features/home/presentation/screens/home_screen.dart';
import 'package:animal_app/features/splash_screen/presentation/screens/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  Bloc.observer = Observer();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/localization',
      fallbackLocale: const Locale('en'),
      saveLocale: false,
      startLocale: Locale("en"),
      child: const AnimalApp(),
    ),
  );
}

class AnimalApp extends StatelessWidget {
  const AnimalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AnimalCubitCubit(HomeRepoImple(ApiBase()))..getAnimals(),
        ),
        BlocProvider(
          create: (context) => GetAnimalCubit(DetailsRepoImple(ApiBase())),
        ),
        BlocProvider(
          create: (context) => SendFavouriteCubit(HomeRepoImple(ApiBase())),
        ),
        BlocProvider(
          create: (context) => GetFavouriteCubit(FavouriteRepoImple(ApiBase())),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routes: {
              AppRouts.splashSceen: (context) => SplashScreen(),
              AppRouts.homeSceen: (context) => HomeScreen(),
              AppRouts.animalDetailsSceen: (context) =>
                  const AnimalDetailsScreen(),
              AppRouts.favoriteSceen: (context) => const FavouriteScreen(),
            },
            debugShowCheckedModeBanner: false,
            theme: AppTheme.getLightTheme(),
            darkTheme: AppTheme.getDarkTheme(),
            themeMode: ThemeMode.system,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
