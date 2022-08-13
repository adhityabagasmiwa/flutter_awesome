import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_awesome/presentation/di/app_module.dart';
import 'package:flutter_awesome/presentation/misc/app_colors.dart';
import 'package:flutter_awesome/presentation/misc/scroll_behaviour.dart';
import 'package:flutter_awesome/presentation/misc/router.dart' as custom_router;
import 'package:flutter_awesome/presentation/pages/main/splash_screen/splash_screen_page.dart';
import 'package:get_it/get_it.dart';

void main() {
  _initApp().then((_) {
    runApp(MyApp());
  });
}

Future<void> _initApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await AppModule.registerAllModules();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: colorPrimary,
        statusBarBrightness:
            Platform.isIOS ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            Platform.isIOS ? Brightness.dark : Brightness.light,
      ),
    );
  } catch (e, stackTrace) {
    if (kDebugMode) {
      print('Error: $e');
      print('Stack Trace: $stackTrace');
    }
  }
}

class MyApp extends StatelessWidget {
  late final custom_router.Router _router = custom_router.Router();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(controller: GetIt.I.get()),
      onGenerateRoute: _router.getRoute,
      builder: (_, child) {
        return ScrollConfiguration(
          behavior: TSScrollBehavior(),
          child: child ?? const SizedBox(),
        );
      },
      navigatorObservers: [_router.routeObserver],
    );
  }
}
