import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savai_taxi/utils/app_constants.dart';
import 'package:savai_taxi/widgets/text_widget.dart';

Widget loginWidget(CountryCode countryCode, Function onCountryChange) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(text: AppConstants.helloNiceToMeetYou),
          textWidget(
              text: AppConstants.getMovingWithSavaiTaxi,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 2),
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () => onCountryChange(),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                  //child: countryCode.flagImage,
                                  ),
                            ),
                            textWidget(text: countryCode.dialCode),
                            const Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                      ),
                    )),
                Container(
                  width: 1,
                  height: 65,
                  color: Colors.black.withOpacity(0.2),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                          hintText: AppConstants.enterMobileNomber,
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                    const TextSpan(text: AppConstants.byCreating + ''),
                    TextSpan(
                      text: AppConstants.termsOfService + '',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: 'жана'),
                    TextSpan(
                      text: AppConstants.privocyPolicy + '',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    ),
  );
}
