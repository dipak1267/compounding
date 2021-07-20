import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'extras/const.dart';
import 'extras/extensioon.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: Routes.pages,
      home: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          (mediaQueryHeight(context) / 5).addHSpace(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              child: Container(
                height: mediaQueryHeight(context) / 5,
                width: mediaQueryWidth(context) / 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.redAccent])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Simple Interest",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          (mediaQueryWidth(context) / 5).addWSpace(),
                          Icon(
                            Icons.arrow_forward,
                            size: 50,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.Interest_page);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              child: Container(
                height: mediaQueryHeight(context) / 5,
                width: mediaQueryWidth(context) / 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.redAccent])),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Compound Interest",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          (mediaQueryWidth(context) / 10).addWSpace(),
                          Icon(
                            Icons.arrow_forward,
                            size: 50,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.Compounding_Interest);
              },
            ),
          ),
        ],
      ),
    );
  }
}
