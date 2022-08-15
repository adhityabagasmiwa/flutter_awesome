import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_awesome/presentation/base/base_controller.dart';
import 'package:flutter_awesome/presentation/pages/main/main_page.dart';

class SplashScreenController extends BaseController {
  SplashScreenController();

  @override
  void initListeners() {
    super.initListeners();
    navigateToHome();
  }

  void navigateToHome() {
    const duration = Duration(seconds: 2);
    Timer(duration, () {
      Navigator.pushNamed(context, MainPage.route);
    });
  }
}
