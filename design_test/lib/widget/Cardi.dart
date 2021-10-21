import 'package:design_test/views/SetScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardiWidget extends StatelessWidget {
  const CardiWidget({
    Key? key,
    required this.txtOne,
    required this.txtTwo,
    required this.txtThree,
    required this.index,
  }) : super(key: key);
  final String txtOne, txtTwo, txtThree;
  final int index;

  @override
  Widget build(BuildContext context) {
    TextStyle? h3 = Theme.of(context).textTheme.headline3;
    Size mqs = MediaQuery.of(context).size;
    double lessPar = mqs.width < mqs.height ? mqs.height : mqs.width;
    return GestureDetector(
      onTap: () {
        Get.to(() => SetScreen(index));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30) +
            const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          color: Colors.green,
          child: SizedBox(
            //TODO make caardi less width
            height: lessPar * 4 / 10,
            // width: lessPar * 4 / 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(txtOne, style: h3),
                Text(txtTwo, style: h3),
                Text(txtThree, style: h3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
