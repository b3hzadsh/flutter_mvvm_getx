// ignore_for_file: prefer_final_fields
// ignore_for_file: prefer_const_constructors, file_names
import 'package:design_test/Model/HomeCardModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  var _cardList = <HomeCardModel>[].obs;
  List<HomeCardModel> get cards => _cardList;
  void setValue(int index, List<String> cardData) {
    _cardList[index] = HomeCardModel(cardData);
  }

  HomeViewModel() {
    _init();
  }
  void _init() {
    addCard(
      HomeCardModel(["one", "two", "three"]),
    );
  }

  void addCard(HomeCardModel card) {
    _cardList.add(card);
  }

  void addCardFromController(List<TextEditingController> cntList) {
    List<String> cardString = cntList.map((e) => e.text).toList();
    final HomeCardModel card = HomeCardModel(cardString);
    _cardList.add(card);
  }

  void setCardFromController(int index, List<TextEditingController> cntList) {
    List<String> cardString = cntList.map((e) => e.text).toList();
    // final CardData card = CardData(cardString);
    setValue(index, cardString);
  }
}
