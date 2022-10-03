import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savai_taxi/utils/app_constants.dart';
import 'package:savai_taxi/widgets/pinput_widget.dart';
import 'package:savai_taxi/widgets/text_widget.dart';

Widget otpVerificationWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(text: AppConstants.phoneVerification),
          textWidget(
              text: AppConstants.enterOtp,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 40,
          ),
          SizedBox(width: Get.width, height: 50, child: RoundedWithShodow()),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                children: [
                  const TextSpan(text: AppConstants.resendCode + ''),
                  TextSpan(
                    text: "10 seconds",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
