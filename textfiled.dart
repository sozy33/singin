import 'package:flutter/material.dart';

class textfild extends StatelessWidget {
  const textfild(
      {super.key, this.hinttext, required this.obscuretext, this.controler});
  final controler;
  final String? hinttext;
  final bool obscuretext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obscuretext,
        controller: controler,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}
