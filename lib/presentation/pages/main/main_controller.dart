import 'package:flutter_awesome/presentation/base/base_controller.dart';

class MainController extends BaseController {
  MainController();

  int _selectedMenuIndex = 0;
  int get selectedMenuIndex => _selectedMenuIndex;

  void changeMenu(int index) {
    _selectedMenuIndex = index;
    refreshUI();
  }
}
