import 'package:flutter/material.dart';

class CommonAuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CommonAuthButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 38,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        child: Text(
          text,
          style: const TextStyle(
              height: 1.3,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}
