import 'package:flutter/material.dart';
import 'package:flutter_awesome/presentation/base/base_view.dart';
import 'package:flutter_awesome/presentation/misc/app_colors.dart';
import 'package:flutter_awesome/presentation/pages/main/home/home_page.dart';
import 'package:flutter_awesome/presentation/pages/main/main_controller.dart';
import 'package:get_it/get_it.dart';

class MainPage extends BasePage<MainController> {
  MainPage({Key? key, required super.controller}) : super(key: key);

  static const String route = '/main';

  @override
  Widget get view => ControlledWidgetBuilder<MainController>(
        builder: (context, controller) => Scaffold(
          backgroundColor: colorWhite,
          body: _buildMenu(controller.selectedMenuIndex),
        ),
      );

  Widget _buildMenu(int selectedIndex) {
    var di = GetIt.I;
    var views = <int, Widget>{
      0: HomePage(controller: di.get()),
      1: HomePage(controller: di.get()),
      2: HomePage(controller: di.get()),
      3: HomePage(controller: di.get()),
    };
    return views[selectedIndex] ?? Container();
  }
}
