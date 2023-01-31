import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final VoidCallback onTap;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const CommonTextField(
      {super.key,
      required this.onTap,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 345,
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return null;
          }
          return null;
        },
        onTap: onTap,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Mulish',
            height: 1.25,
            fontWeight: FontWeight.w600,
            color: Color(
              0xffBEBEBE,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(14, 12, 0, 12),
          fillColor: const Color(0xffF3F2F7),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff5EDE99), width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen.shade50, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
