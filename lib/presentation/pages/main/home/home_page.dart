import 'package:flutter/material.dart';
import 'package:flutter_awesome/presentation/base/base_view.dart';
import 'package:flutter_awesome/presentation/misc/app_colors.dart';
import 'package:flutter_awesome/presentation/misc/app_size.dart';
import 'package:flutter_awesome/presentation/misc/app_styles.dart';
import 'package:flutter_awesome/presentation/pages/main/home/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends BasePage<HomeController> {
  HomePage({Key? key, required super.controller}) : super(key: key);

  @override
  Widget get view => Scaffold(
        key: globalKey,
        appBar: AppBar(
          toolbarHeight: AppSize.dimen0,
          elevation: AppSize.elevation0,
          backgroundColor: colorPrimary,
        ),
        backgroundColor: colorWhite,
        body: Center(
          child: Text(
            "Home Page",
            style: GoogleFonts.poppins(
              textStyle: textStyleW400S14,
            ),
          ),
        ),
      );
}
