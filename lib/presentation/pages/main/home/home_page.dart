import 'package:flutter/material.dart';
import 'package:flutter_awesome/domain/package_domain.dart';
import 'package:flutter_awesome/presentation/base/base_view.dart';
import 'package:flutter_awesome/presentation/misc/app_colors.dart';
import 'package:flutter_awesome/presentation/misc/app_size.dart';
import 'package:flutter_awesome/presentation/misc/app_styles.dart';
import 'package:flutter_awesome/presentation/pages/main/home/home_controller.dart';
import 'package:flutter_awesome/presentation/widgets/asset_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends BasePage<HomeController> {
  HomePage({Key? key, required super.controller}) : super(key: key);

  Widget _buildPackageCard(ModelPackage item) {
    return Container(
      width: AppSize.dimen103.w,
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.dimen8,
        horizontal: AppSize.dimen8,
      ),
      margin: const EdgeInsets.only(left: AppSize.dimen20),
      decoration: const BoxDecoration(
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorShadow,
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextTitle(
            text: item.title,
            textStyle: textStyleW400S14,
            color: colorBlack,
          ),
          SizedBox(height: AppSize.dimen4.w),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildTextTitle(
                text: item.quota,
                textStyle: textStyleW700S24,
                color: colorPrimary,
              ),
              SizedBox(width: AppSize.dimen4.w),
              _buildTextTitle(
                text: item.type,
                textStyle: textStyleW400S14,
                color: colorDarkGrey,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTextTitle({
    required String text,
    required TextStyle textStyle,
    Color? color = colorWhite,
  }) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: textStyle.copyWith(color: color),
      ),
    );
  }

  TextSpan _buildTextSpan({
    required String startText,
    required String endText,
    required TextStyle startStyle,
    required TextStyle endStyle,
    Color? color = colorWhite,
  }) {
    return TextSpan(
      text: startText,
      style: startStyle.copyWith(color: color),
      children: <InlineSpan>[
        TextSpan(
          text: endText,
          style: endStyle.copyWith(color: color),
        ),
      ],
    );
  }

  Widget _buildHeroSection() {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(color: colorPrimary, height: AppSize.dimen150.w),
          Container(
            padding: const EdgeInsets.fromLTRB(
              AppSize.dimen20,
              AppSize.dimen0,
              AppSize.dimen20,
              AppSize.dimen12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppSize.dimen9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text.rich(
                        _buildTextSpan(
                          startText: 'Hai, ',
                          endText: 'Muhammad',
                          startStyle: textStyleW400S20,
                          endStyle: textStyleW700S20,
                        ),
                      ),
                      TSSvgPicture.asset(assetName: 'ic_round_qrcode.svg'),
                    ],
                  ),
                ),
                SizedBox(height: AppSize.dimen7.w),
                Container(
                  padding: const EdgeInsets.fromLTRB(
                    AppSize.dimen20,
                    AppSize.dimen16,
                    AppSize.dimen20,
                    AppSize.dimen12,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSize.radius8),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [colorRed, colorDarkRed],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildTextTitle(
                            text: '081290112333',
                            textStyle: textStyleW700S18,
                          ),
                          TSImage.asset(assetName: 'img_simpati_logo.png'),
                        ],
                      ),
                      SizedBox(height: AppSize.dimen21.w),
                      _buildTextTitle(
                        text: 'Sisa Pulsa Anda',
                        textStyle: textStyleW500S14,
                      ),
                      SizedBox(height: AppSize.dimen5.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildTextTitle(
                            text: 'Rp34.000',
                            textStyle: textStyleW700S24,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSize.dimen8,
                              horizontal: AppSize.dimen16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSize.radius4,
                              ),
                              color: colorYellow,
                            ),
                            child: _buildTextTitle(
                              text: 'Isi Pulsa',
                              textStyle: textStyleW500S14,
                              color: colorBlack,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSize.dimen24.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            _buildTextSpan(
                              startText: 'Berlaku sampai ',
                              endText: '19 April 2020',
                              startStyle: textStyleW400S14,
                              endStyle: textStyleW700S14,
                            ),
                          ),
                          SizedBox(height: AppSize.dimen4.w),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _buildTextTitle(
                                text: 'Telkomsel POIN',
                                textStyle: textStyleW400S14,
                              ),
                              SizedBox(width: AppSize.dimen4.w),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(AppSize.radius4),
                                  ),
                                  color: colorYellow,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppSize.dimen4,
                                  vertical: AppSize.dimen2,
                                ),
                                child: _buildTextTitle(
                                  text: '172',
                                  textStyle: textStyleW700S14,
                                  color: colorBlack,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget get view =>
      ControlledWidgetBuilder<HomeController>(builder: (context, controller) {
        return Scaffold(
          key: globalKey,
          appBar: AppBar(
            toolbarHeight: AppSize.dimen0,
            elevation: AppSize.elevation0,
            backgroundColor: colorPrimary,
          ),
          backgroundColor: colorWhite,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeroSection(),
                SizedBox(
                  height: AppSize.dimen68.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.modelPackage.length,
                    itemBuilder: (context, index) {
                      var item = controller.modelPackage[index];
                      return _buildPackageCard(item);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppSize.dimen25,
                    bottom: AppSize.dimen20,
                  ),
                  child: Divider(
                    height: AppSize.dimen8.w,
                    thickness: AppSize.dimen8,
                  ),
                )
              ],
            ),
          ),
        );
      });
}
