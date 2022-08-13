import 'package:flutter/material.dart';
import 'package:flutter_awesome/presentation/base/base_view.dart';
import 'package:flutter_awesome/presentation/misc/app_colors.dart';
import 'package:flutter_awesome/presentation/misc/app_size.dart';
import 'package:flutter_awesome/presentation/pages/main/splash_screen/splash_screen_controller.dart';
import 'package:flutter_awesome/presentation/widgets/asset_widget.dart';

class SplashScreenPage extends BasePage<SplashScreenController> {
  SplashScreenPage({Key? key, required super.controller}) : super(key: key);

  static const String route = 'Splash';

  @override
  Widget get view => Scaffold(
        key: globalKey,
        backgroundColor: colorPrimary,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TSImage.asset(assetName: 'img_logo.png'),
              const SizedBox(height: AppSize.dimen12),
              TSSvgPicture.asset(assetName: 'ic_logo_name.svg'),
            ],
          ),
        ),
      );
}
