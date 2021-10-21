// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
// ignore_for_file: prefer_const_constructors, file_names
import 'package:design_test/ViewModel/HomeViewModel.dart';
import 'package:design_test/widget/TextInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);
  final List<TextEditingController> cntList = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  final HomeViewModel hVMController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 20),
            Textlnput(cntList[0]),
            SizedBox(height: 20),
            Textlnput(cntList[1]),
            SizedBox(height: 20),
            Textlnput(cntList[2]),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  hVMController.addCardFromController(cntList);
                  Get.back();
                },
                child: Text("Add")),
          ],
        ),
      )),
    );
  }
}
