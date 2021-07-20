
import 'package:compounding/main.dart';
import 'package:compounding/screens/compounding.dart';
import 'package:compounding/screens/interest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Routes{
  static var pages = <GetPage>[
    GetPage(name: Startup, page: () => MyApp(),transition: Transition.rightToLeft),
    GetPage(name: Interest_page, page: () => Interest(),transition: Transition.rightToLeft),
    GetPage(name: Compounding_Interest, page: () => CompoundingInterest(),transition: Transition.rightToLeft),

  ];
  static const String Startup = "/startup";
  static const String Interest_page = "/interest";
  static const String Compounding_Interest = "/compounding";
}