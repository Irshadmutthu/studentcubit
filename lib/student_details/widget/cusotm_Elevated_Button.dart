import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Custom_Elevated_Button extends StatelessWidget {
  String button_name;
  Function onPressing;
  double? fontsize;

  Custom_Elevated_Button(
      {Key? key,
      required this.button_name,
      required this.onPressing,
      this.fontsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (() {
          onPressing();
        }),
        child: Text(
          button_name,
          style: TextStyle(fontSize: fontsize),
        ));
  }
}
