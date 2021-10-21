// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';

class Textlnput extends StatefulWidget {
  const Textlnput(
    this.cnt, {
    Key? key,
  }) : super(key: key);
  //Todo take controller in cons
  final TextEditingController cnt;

  @override
  State<Textlnput> createState() => _TextlnputState();
}

class _TextlnputState extends State<Textlnput> {
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    widget.cnt.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(),
        ),
        child: TextField(
          controller: widget.cnt,
          decoration: const InputDecoration(
            border: InputBorder.none,
            label: Text("lable"),
            // hintText: "hint ",
          ),
        ),
      ),
    );
  }
}

// class TextInput extends StatelessWidget {
//   TextInput( this.cnt,{ Key? key }) : super(key: key);
//   TextEditingController cnt;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25),
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(25),
//           border: Border.all(),
//         ),
//         child:  TextField(
//           controller: cnt,
//           decoration: const InputDecoration(
//             border: InputBorder.none,
//             label: Text("lable"),
//             hintText: "hint ",
//           ),
//         ),
//       ),
//     );
//   }
// }