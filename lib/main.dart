import 'dart:io';

import 'package:beauty_app/features/splash/presentation/pages/splash.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer_util.dart';
import 'package:beauty_app/core/constants/Keys.dart';

import 'core/constants.dart';
import 'core/utils/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

import 'features/salons/MyBookings_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

//  Firebase.initializeApp();
  await AppSharedPreferences.init();

  String lang = AppSharedPreferences.lang;
  if (lang == null) {
    AppSharedPreferences.lang = DEFAULT_LANG;
    lang = DEFAULT_LANG;
  }

/*   set   Orientation  only  portrait    */
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      // DeviceOrientation.landscapeLeft,
      // DeviceOrientation.landscapeRight,
    ],
  ).then((val) {
    runApp(
      EasyLocalization(
        startLocale: Locale(lang),
        // startLocale: Locale(LANG_AR),
        supportedLocales: [Locale(LANG_AR), Locale(LANG_EN)],
        path: 'assets/lang',
        saveLocale: true,

        child: MyApp(),
      ),
    );
  });
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


// first page
class MyApp extends StatelessWidget {
  static GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      child: MaterialApp(
        title: "Beauty App".tr(),
        navigatorKey: Keys.navigatorKey,
        theme: ThemeData(
          fontFamily:
              AppSharedPreferences.lang == LANG_AR ? 'ARBFONTS' : 'MYRIADPRO',
        ),
        // home: MyBookingsScreen(),
      home: Splash(),
        //home: AppSharedPreferences.hasAccessIntro ? Intro() : AppSharedPreferences.hasAccessToken ? LoginPage() : DrawerPage(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}

//responsive
class Sizer extends StatelessWidget {
  final Widget child;

  const Sizer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return child;
          },
        );
      },
    );
  }
}

