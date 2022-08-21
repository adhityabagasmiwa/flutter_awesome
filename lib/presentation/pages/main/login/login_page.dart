import 'package:flutter/material.dart';
import 'package:flutter_awesome/presentation/base/base_view.dart';
import 'package:flutter_awesome/presentation/misc/app_colors.dart';
import 'package:flutter_awesome/presentation/misc/app_size.dart';
import 'package:flutter_awesome/presentation/misc/app_styles.dart';
import 'package:flutter_awesome/presentation/pages/main/login/login_controller.dart';
import 'package:flutter_awesome/presentation/widgets/asset_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends BasePage<LoginController> {
  LoginPage({Key? key, required super.controller}) : super(key: key);

  static const String route = 'Login';

  @override
  Widget get view =>
      ControlledWidgetBuilder<LoginController>(builder: (context, controller) {
        return Scaffold(
          key: globalKey,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: AppSize.dimen24.w),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.dimen20,
                  vertical: AppSize.dimen32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TSImage.asset(assetName: 'img_login.png'),
                    SizedBox(height: AppSize.dimen46.w),
                    Text(
                      'Silahkan masuk dengan nomor telkomsel kamu',
                      style: textStyleW700S18,
                    ),
                    SizedBox(height: AppSize.dimen24.w),
                    Text('Nomor HP', style: textStyleW700S14),
                    TextField(
                      onChanged: (value) {
                        controller.handleChangeNumber(value);
                      },
                      style: textStyleW500S14,
                      decoration: InputDecoration(
                          hintText: "Cth. 08129011xxxx",
                          hintStyle:
                              textStyleW500S14.copyWith(color: colorTextHint),
                          contentPadding: const EdgeInsets.all(12.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: colorBlack),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: colorBlack),
                          )),
                    ),
                    SizedBox(height: AppSize.dimen16.w),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: colorPrimary,
                          value: controller.checkbox,
                          onChanged: (_) {
                            controller.handleCheckbox();
                          },
                        ),
                        Expanded(
                          child: Text(
                            'Saya menyetujui syarat, ketentuan, dan privasi Telkomsel',
                            style: textStyleW400S14,
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: AppSize.dimen32.w),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: colorPrimary,
                        minimumSize: const Size.fromHeight(42),
                      ),
                      onPressed: () {},
                      child: Text(
                        'LANJUT',
                        style: textStyleW700S14,
                      ),
                    ),
                    SizedBox(height: AppSize.dimen16.w),
                    Center(
                      child: Text(
                        'Atau masuk menggunakan',
                        style: textStyleW500S14.copyWith(color: colorDarkGrey),
                      ),
                    ),
                    SizedBox(height: AppSize.dimen16.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppSize.dimen147.w,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              primary: colorFacebook,
                              side: BorderSide(
                                width: AppSize.dimen1.w,
                                color: colorFacebook,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TSSvgPicture.asset(
                                  assetName: 'ic_facebook_filled.svg',
                                ),
                                SizedBox(width: AppSize.dimen8.w),
                                Text('Facebook', style: textStyleW700S14),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: AppSize.dimen32.w),
                        SizedBox(
                          width: AppSize.dimen147.w,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              primary: colorTwitter,
                              side: BorderSide(
                                width: AppSize.dimen1.w,
                                color: colorTwitter,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TSSvgPicture.asset(
                                    assetName: 'ic_twitter_outlined.svg'),
                                SizedBox(width: AppSize.dimen8.w),
                                Text('Twitter', style: textStyleW700S14),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
