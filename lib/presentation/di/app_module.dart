import 'package:flutter_awesome/presentation/di/controller_module.dart';

class AppModule {
  static Future<void> registerAllModules() async {
    ControllerModule.init();
  }
}
