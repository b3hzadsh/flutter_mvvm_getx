// ignore_for_file: prefer_const_constructors

import 'package:design_test/views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'ViewModel/HomeViewModel.dart';
// import 'views/SetScreen.dart';

void main() {
  runApp(Appi());
}

class Appi extends StatelessWidget {
  const Appi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeViewModel hVMController = Get.put(HomeViewModel());
    return GetMaterialApp(
      home: HomeScreen(),
      //SetScreen(),
    );
  }
}
