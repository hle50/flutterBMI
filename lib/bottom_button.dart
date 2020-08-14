import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        color: kBottomContColor,
        width: double.infinity,
        height: kBottomHeight,
        padding: EdgeInsets.only(bottom: 5.0),
        child: Center(
            child: Text(
              this.buttonTitle,
              style: kLargeButtonText,
            )),
      ),
    );
  }
}