import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(110, 50),
            backgroundColor: green1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26),
            )),
        child: const Text(
          'Next',
          style: TextStyle(color: white, fontSize: 18),
        ),
      ),
    );
  }
}
