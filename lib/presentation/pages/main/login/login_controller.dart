import 'package:flutter_awesome/presentation/base/base_controller.dart';

class LoginController extends BaseController {
  LoginController();

  String _handphoneNumber = "";
  bool _checkbox = false;

  void handleChangeNumber(String value) {
    _handphoneNumber = value;

    notifyListeners();
  }

  void handleCheckbox() {
    _checkbox = !checkbox;

    notifyListeners();
  }

  String get handphoneNumber => _handphoneNumber;
  bool get checkbox => _checkbox;  
}
