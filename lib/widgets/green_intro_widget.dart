import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget greenIntroWidget() {
  return Container(
    width: Get.width,
    height: Get.height * 0.5,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/taxi.jpg'), fit: BoxFit.cover),
    ),
  );
}
