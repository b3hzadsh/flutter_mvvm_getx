// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
// ignore_for_file: prefer_const_constructors, file_names
import 'package:design_test/ViewModel/HomeViewModel.dart';
import 'package:design_test/widget/TextInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetScreen extends StatelessWidget {
  SetScreen(this.index, {Key? key}) : super(key: key);
  final int index;
  final HomeViewModel hVMController = Get.find();

  @override
  Widget build(BuildContext context) {
    final List<TextEditingController> cntList = <TextEditingController>[
      TextEditingController(text: hVMController.cards[index].textValues[0]),
      TextEditingController(text: hVMController.cards[index].textValues[1]),
      TextEditingController(text: hVMController.cards[index].textValues[2]),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('yar group'),
      ),
      body: SafeArea(
          child: Container(
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
                  hVMController.setCardFromController(index, cntList);
                  Get.back();
                },
                child: Text("Edit"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
