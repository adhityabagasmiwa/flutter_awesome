import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome/presentation/base/base_view.dart';
import 'package:flutter_awesome/presentation/misc/app_colors.dart';
import 'package:flutter_awesome/presentation/misc/app_size.dart';
import 'package:flutter_awesome/presentation/misc/app_styles.dart';
import 'package:flutter_awesome/presentation/pages/main/verification/verification_controller.dart';
import 'package:flutter_awesome/presentation/widgets/asset_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class VerificationPage extends BasePage<VerificationController> {
  VerificationPage({Key? key, required super.controller}) : super(key: key);

  static const String route = '/verification';

  @override

  // TODO: implement view
  Widget get view => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: colorWhite,
          elevation: AppSize.elevation0,
          title: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: colorBlack,
            ),
          ),
        ),
        backgroundColor: colorWhite,
        body: Container(
          padding: const EdgeInsets.all(AppSize.dimen16),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TSSvgPicture.asset(assetName: 'ic_verification.svg'),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Masukan kode unik yang kami kirim",
                    style: GoogleFonts.poppins(textStyle: textStyleW600S18),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Silahkan periksa SMS kamu dan masukan kode unik yang kami kirimkan ke 081290112333",
                    style: GoogleFonts.poppins(textStyle: textStyleW400S14),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Kode Unik",
                    style: GoogleFonts.poppins(textStyle: textStyleW400S14),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Cth. q5TsgH***'),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Tidak menerima sms?",
                        style: GoogleFonts.poppins(
                            textStyle: textStyleW400S14, color: colorBlack),
                        children: [
                          TextSpan(
                            text: " Kirim Ulang",
                            style: GoogleFonts.poppins(
                                textStyle: textStyleW500S14,
                                color: colorRedLink),
                            recognizer: TapGestureRecognizer()
                              ..onTap = launchMsg,
                          )
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
      );

  Future launchMsg() async {
    const phoneNumber = '+6285730846212';
    // await launch('tel:$phoneNumber');
    await launchUrl(Uri(scheme: 'tel', path: phoneNumber));
  }
}
