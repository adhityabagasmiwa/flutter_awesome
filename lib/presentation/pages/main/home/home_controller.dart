import 'package:flutter_awesome/domain/package_domain.dart';
import 'package:flutter_awesome/presentation/base/base_controller.dart';

class HomeController extends BaseController {
  HomeController();

  final List<ModelPackage> modelPackage = [
    ModelPackage(title: 'Internet', quota: '12.19', type: 'GB'),
    ModelPackage(title: 'Telpon', quota: '0', type: 'Min'),
    ModelPackage(title: 'SMS', quota: '23', type: 'SMS'),
  ];
}
