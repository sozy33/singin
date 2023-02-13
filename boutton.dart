import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'ro.ttf',
              fontWeight: FontWeight.bold,
            )),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 66),
          primary: Colors.black,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
