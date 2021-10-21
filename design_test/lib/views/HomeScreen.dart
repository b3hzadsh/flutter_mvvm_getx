// ignore_for_file: prefer_const_constructors, file_names
// ignore_for_file: prefer_const_constructors, file_names
import 'package:design_test/ViewModel/HomeViewModel.dart';
import 'package:design_test/views/AddScreen.dart';
import 'package:design_test/widget/Cardi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel hVMController = Get.find();
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Get.to(AddScreen());
          Get.to(() => AddScreen());
        },
      ),
      appBar: AppBar(
        title: Text('title'),
      ),
      body: SafeArea(
        child: Center(
          child: Obx(
            () => ListView.builder(
              itemBuilder: (ctx, index) {
                var cardz = hVMController.cards[index].textValues;
                return CardiWidget(
                  index: index,
                  txtOne: cardz[0],
                  txtTwo: cardz[1],
                  txtThree: cardz[2],
                );
              },
              itemCount: hVMController.cards.length,
            ),
          ),
        ),
      ),
    );
  }
}
