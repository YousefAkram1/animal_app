import 'package:animal_app/core/utils/bloc_observer.dart';
import 'package:animal_app/core/utils/values/app_routs.dart';
import 'package:animal_app/features/home/data/repo/app_repo_imple.dart';
import 'package:animal_app/features/home/presentation/home_cubit/cubit/animal_cubit_cubit.dart';
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
      fallbackLocale: const Locale('ar'),
      saveLocale: true,
      child: const AnimalApp(),
    ),
  );
}

class AnimalApp extends StatelessWidget {
  const AnimalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimalCubitCubit(AppRepoImple())..getAnimals(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            routes: {
              AppRouts.splashSceen: (context) => SplashScreen(),
              AppRouts.homeSceen: (context) => HomeScreen(),
            },
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
