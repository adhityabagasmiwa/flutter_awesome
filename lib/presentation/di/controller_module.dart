import 'package:flutter_awesome/presentation/pages/main/home/home_controller.dart';
import 'package:flutter_awesome/presentation/pages/main/main_controller.dart';
import 'package:flutter_awesome/presentation/pages/main/splash_screen/splash_screen_controller.dart';
import 'package:get_it/get_it.dart';

class ControllerModule {
  static void init() {
    var di = GetIt.I;
    di.registerFactory(() => MainController());
    di.registerFactory(() => HomeController());
    di.registerFactory(() => SplashScreenController());
  }
}
