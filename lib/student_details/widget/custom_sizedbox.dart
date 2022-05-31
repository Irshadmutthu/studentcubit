import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Custom_Sizedbox extends StatelessWidget {
  double? height;
  double? width;
  Widget? child;
  Custom_Sizedbox({Key? key, this.height, this.width, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
