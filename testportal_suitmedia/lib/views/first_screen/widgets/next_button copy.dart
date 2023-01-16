
import 'package:flutter/material.dart';
import 'package:testportal_suitmedia/utils/constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.onPressed});

final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(Constants.button),
         padding: EdgeInsets.symmetric(horizontal: size.height * 0.180, vertical: size.width * 0.030),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),),
      onPressed: onPressed,
      child: Text('Next'.toUpperCase()),
    );
  }
}